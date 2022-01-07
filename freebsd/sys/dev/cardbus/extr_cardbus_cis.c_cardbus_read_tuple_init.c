
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct resource {int dummy; } ;
typedef int device_t ;


 int CARDBUS_EXROM_DATA_IMAGE_LENGTH ;
 int CARDBUS_EXROM_DATA_INDICATOR ;
 int CARDBUS_EXROM_DATA_PTR ;
 int CARDBUS_EXROM_SIGNATURE ;
 struct resource* CIS_CONFIG_SPACE ;
 int DEVPRINTF (int ) ;
 int PCIM_CIS_ADDR_MASK ;







 int PCIM_CIS_ASI_MASK ;

 int PCIM_CIS_ROM_MASK ;
 int PCIR_BAR (int ) ;
 int PCIR_BIOS ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 struct resource* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_read_1 (struct resource*,int) ;
 int bus_read_2 (struct resource*,int) ;
 int cardbus_read_tuple_finish (int ,int ,int,struct resource*) ;
 int device_printf (int ,char*,...) ;
 int rman_get_start (struct resource*) ;
 int rman_make_alignment_flags (int) ;

__attribute__((used)) static struct resource *
cardbus_read_tuple_init(device_t cbdev, device_t child, uint32_t *start,
    int *rid)
{
 struct resource *res;
 uint32_t space;

 space = *start & PCIM_CIS_ASI_MASK;
 switch (space) {
 case 129:
  DEVPRINTF((cbdev, "CIS in PCI config space\n"));

  return (CIS_CONFIG_SPACE);
 case 135:
 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
  *rid = PCIR_BAR(space - 135);
  DEVPRINTF((cbdev, "CIS in BAR %#x\n", *rid));
  break;
 case 128:
  *rid = PCIR_BIOS;
  DEVPRINTF((cbdev, "CIS in option rom\n"));
  break;
 default:
  device_printf(cbdev, "Unable to read CIS: Unknown space: %d\n",
      space);
  return (((void*)0));
 }


 res = bus_alloc_resource_any(child, SYS_RES_MEMORY, rid,
     rman_make_alignment_flags(4096) | RF_ACTIVE);
 if (res == ((void*)0)) {
  device_printf(cbdev, "Unable to allocate resource "
      "to read CIS.\n");
  return (((void*)0));
 }
 DEVPRINTF((cbdev, "CIS Mapped to %#jx\n",
     rman_get_start(res)));


 if (space == 128) {
  uint32_t imagesize;
  uint32_t imagebase = 0;
  uint32_t pcidata;
  uint16_t romsig;
  int romnum = 0;
  int imagenum;

  imagenum = (*start & PCIM_CIS_ROM_MASK) >> 28;
  for (romnum = 0;; romnum++) {
   romsig = bus_read_2(res,
       imagebase + CARDBUS_EXROM_SIGNATURE);
   if (romsig != 0xaa55) {
    device_printf(cbdev, "Bad header in rom %d: "
        "[%x] %04x\n", romnum, imagebase +
        CARDBUS_EXROM_SIGNATURE, romsig);
    cardbus_read_tuple_finish(cbdev, child, *rid,
        res);
    *rid = 0;
    return (((void*)0));
   }





   if (romnum == imagenum)
    break;


   pcidata = imagebase + bus_read_2(res,
       imagebase + CARDBUS_EXROM_DATA_PTR);
   imagesize = bus_read_2(res,
       pcidata + CARDBUS_EXROM_DATA_IMAGE_LENGTH);

   if (imagesize == 0) {




    device_printf(cbdev, "Warning, size of Option "
        "ROM image %d is 0 bytes, assuming 512 "
        "bytes.\n", romnum);
    imagesize = 1;
   }


   imagesize <<= 9;

   if ((bus_read_1(res, pcidata +
       CARDBUS_EXROM_DATA_INDICATOR) & 0x80) != 0) {
    device_printf(cbdev, "Cannot find CIS in "
        "Option ROM\n");
    cardbus_read_tuple_finish(cbdev, child, *rid,
        res);
    *rid = 0;
    return (((void*)0));
   }
   imagebase += imagesize;
  }
  *start = imagebase + (*start & PCIM_CIS_ADDR_MASK);
 } else {
  *start = *start & PCIM_CIS_ADDR_MASK;
 }
 DEVPRINTF((cbdev, "CIS offset is %#x\n", *start));

 return (res);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct tuple_callbacks {int dummy; } ;
struct cardbus_devinfo {int mprefetchable; int mbelow1mb; } ;
typedef int device_t ;


 int EINVAL ;
 int PCIR_BAR (int) ;
 int PCI_RID2BAR (int) ;
 int SYS_RES_IOPORT ;
 int SYS_RES_MEMORY ;
 int TPL_BAR_REG_AS ;
 int TPL_BAR_REG_ASI_MASK ;
 int TPL_BAR_REG_BELOW1MB ;
 int TPL_BAR_REG_PREFETCHABLE ;
 struct cardbus_devinfo* device_get_ivars (int ) ;
 int device_printf (int ,char*,...) ;
 int le32toh (int) ;

__attribute__((used)) static int
decode_tuple_bar(device_t cbdev, device_t child, int id,
    int len, uint8_t *tupledata, uint32_t start, uint32_t *off,
    struct tuple_callbacks *info, void *argp)
{
 struct cardbus_devinfo *dinfo = device_get_ivars(child);
 int type;
 uint8_t reg;
 uint32_t bar;

 if (len != 6) {
  device_printf(cbdev, "CIS BAR length not 6 (%d)\n", len);
  return (EINVAL);
 }

 reg = *tupledata;
 len = le32toh(*(uint32_t*)(tupledata + 2));
 if (reg & TPL_BAR_REG_AS)
  type = SYS_RES_IOPORT;
 else
  type = SYS_RES_MEMORY;

 bar = reg & TPL_BAR_REG_ASI_MASK;
 if (bar == 0) {
  device_printf(cbdev, "Invalid BAR type 0 in CIS\n");
  return (EINVAL);
 } else if (bar == 7) {

  return (0);
 }


 bar = PCIR_BAR(bar - 1);

 if (type == SYS_RES_MEMORY) {
  if (reg & TPL_BAR_REG_PREFETCHABLE)
   dinfo->mprefetchable |= (1 << PCI_RID2BAR(bar));
  if (reg & TPL_BAR_REG_BELOW1MB)
   dinfo->mbelow1mb |= (1 << PCI_RID2BAR(bar));
 }

 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct exca_softc {int chipset; int bsh; int bst; int dev; } ;


 int DEVPRINTF (int ,char*,int) ;
 int EXCA_BOGUS ;
 int EXCA_CIRRUS_CHIP_INFO ;
 int EXCA_CIRRUS_CHIP_INFO_CHIP_ID ;
 int EXCA_CIRRUS_CHIP_INFO_SLOTS ;
 int EXCA_I82365 ;
 int EXCA_I82365SL_DF ;
 int EXCA_IBM ;
 int EXCA_IBM_KING ;
 int EXCA_IDENT ;
 int EXCA_IDENT_IFTYPE_MASK ;
 int EXCA_IDENT_IFTYPE_MEM_AND_IO ;






 int EXCA_IDENT_REV_MASK ;
 int EXCA_IDENT_ZERO ;
 int EXCA_PD6710 ;
 int EXCA_PD6722 ;
 int EXCA_REG_INDEX ;
 int EXCA_RF5C296 ;
 int EXCA_RF5C396 ;
 int EXCA_RICOH_ID ;
 int EXCA_RID_296 ;
 int EXCA_RID_396 ;
 int EXCA_VADEM_COOKIE1 ;
 int EXCA_VADEM_COOKIE2 ;
 int EXCA_VADEM_REV ;
 int EXCA_VADEM_VMISC ;
 int EXCA_VG365 ;
 int EXCA_VG465 ;
 int EXCA_VG468 ;
 int EXCA_VG469 ;
 int bus_space_write_1 (int ,int ,int ,int ) ;
 int exca_clrb (struct exca_softc*,int ,int ) ;
 int exca_getb (struct exca_softc*,int ) ;
 int exca_putb (struct exca_softc*,int ,int ) ;
 int exca_setb (struct exca_softc*,int ,int ) ;

__attribute__((used)) static int
exca_valid_slot(struct exca_softc *exca)
{
 uint8_t c;


 exca->chipset = EXCA_BOGUS;






 c = exca_getb(exca, EXCA_IDENT);
 DEVPRINTF(exca->dev, "Ident is %x\n", c);
 if ((c & EXCA_IDENT_IFTYPE_MASK) != EXCA_IDENT_IFTYPE_MEM_AND_IO)
  return (0);
 if ((c & EXCA_IDENT_ZERO) != 0)
  return (0);
 switch (c & EXCA_IDENT_REV_MASK) {



 case 132:
 case 131:
  exca->chipset = EXCA_I82365;







  bus_space_write_1(exca->bst, exca->bsh, EXCA_REG_INDEX,
      EXCA_VADEM_COOKIE1);
  bus_space_write_1(exca->bst, exca->bsh, EXCA_REG_INDEX,
      EXCA_VADEM_COOKIE2);
  exca_setb(exca, EXCA_VADEM_VMISC, EXCA_VADEM_REV);
  c = exca_getb(exca, EXCA_IDENT);
  if (c & 0x08) {
   switch (c & 7) {
   case 1:
    exca->chipset = EXCA_VG365;
    break;
   case 2:
    exca->chipset = EXCA_VG465;
    break;
   case 3:
    exca->chipset = EXCA_VG468;
    break;
   default:
    exca->chipset = EXCA_VG469;
    break;
   }
   exca_clrb(exca, EXCA_VADEM_VMISC, EXCA_VADEM_REV);
   break;
  }



  c = exca_getb(exca, EXCA_RICOH_ID);
  if (c == EXCA_RID_396) {
   exca->chipset = EXCA_RF5C396;
   break;
  } else if (c == EXCA_RID_296) {
   exca->chipset = EXCA_RF5C296;
   break;
  }



  exca_putb(exca, EXCA_CIRRUS_CHIP_INFO, 0);
  c = exca_getb(exca, EXCA_CIRRUS_CHIP_INFO);
  if ((c & EXCA_CIRRUS_CHIP_INFO_CHIP_ID) ==
      EXCA_CIRRUS_CHIP_INFO_CHIP_ID) {
   c = exca_getb(exca, EXCA_CIRRUS_CHIP_INFO);
   if ((c & EXCA_CIRRUS_CHIP_INFO_CHIP_ID) == 0) {
    if (c & EXCA_CIRRUS_CHIP_INFO_SLOTS)
     exca->chipset = EXCA_PD6722;
    else
     exca->chipset = EXCA_PD6710;
    break;
   }
  }
  break;

 case 133:





  exca->chipset = EXCA_I82365SL_DF;
  break;
 case 130:
 case 129:
  exca->chipset = EXCA_IBM;
  break;
 case 128:
  exca->chipset = EXCA_IBM_KING;
  break;
 default:
  return (0);
 }
 return (1);
}

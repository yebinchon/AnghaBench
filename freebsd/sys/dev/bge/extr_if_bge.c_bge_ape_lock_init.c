
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bge_softc {scalar_t__ bge_asicrev; int bge_func_addr; int bge_phy_ape_lock; int bge_dev; } ;


 int APE_WRITE_4 (struct bge_softc*,int,int) ;
 int BGE_APE_LOCK_GPIO ;
 int BGE_APE_LOCK_GRANT ;
 int BGE_APE_LOCK_GRANT_DRIVER0 ;




 int BGE_APE_PER_LOCK_GRANT ;
 scalar_t__ BGE_ASICREV_BCM5761 ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
bge_ape_lock_init(struct bge_softc *sc)
{
 uint32_t bit, regbase;
 int i;

 if (sc->bge_asicrev == BGE_ASICREV_BCM5761)
  regbase = BGE_APE_LOCK_GRANT;
 else
  regbase = BGE_APE_PER_LOCK_GRANT;


 for (i = 131; i <= BGE_APE_LOCK_GPIO; i++) {
  switch (i) {
  case 131:
  case 130:
  case 129:
  case 128:
   bit = BGE_APE_LOCK_GRANT_DRIVER0;
   break;
  default:
   if (sc->bge_func_addr == 0)
    bit = BGE_APE_LOCK_GRANT_DRIVER0;
   else
    bit = (1 << sc->bge_func_addr);
  }
  APE_WRITE_4(sc, regbase + 4 * i, bit);
 }


 switch (sc->bge_func_addr) {
 case 0:
  sc->bge_phy_ape_lock = 131;
  break;
 case 1:
  sc->bge_phy_ape_lock = 130;
  break;
 case 2:
  sc->bge_phy_ape_lock = 129;
  break;
 case 3:
  sc->bge_phy_ape_lock = 128;
  break;
 default:
  device_printf(sc->bge_dev,
      "PHY lock not supported on this function\n");
 }
}

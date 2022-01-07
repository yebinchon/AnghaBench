
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct bfe_softc {int bfe_dev; } ;


 int BMCR_RESET ;
 int DELAY (int) ;
 int ENXIO ;
 int bfe_readphy (struct bfe_softc*,int ,int*) ;
 int bfe_writephy (struct bfe_softc*,int ,int) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
bfe_resetphy(struct bfe_softc *sc)
{
 u_int32_t val;

 bfe_writephy(sc, 0, BMCR_RESET);
 DELAY(100);
 bfe_readphy(sc, 0, &val);
 if (val & BMCR_RESET) {
  device_printf(sc->bfe_dev, "PHY Reset would not complete.\n");
  return (ENXIO);
 }
 return (0);
}

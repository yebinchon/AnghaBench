
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fxp_softc {int dummy; } ;
typedef int device_t ;


 int CSR_READ_4 (struct fxp_softc*,int ) ;
 int CSR_WRITE_4 (struct fxp_softc*,int ,int) ;
 int DELAY (int) ;
 int FXP_CSR_MDICONTROL ;
 int FXP_MDI_READ ;
 struct fxp_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
fxp_miibus_readreg(device_t dev, int phy, int reg)
{
 struct fxp_softc *sc = device_get_softc(dev);
 int count = 10000;
 int value;

 CSR_WRITE_4(sc, FXP_CSR_MDICONTROL,
     (FXP_MDI_READ << 26) | (reg << 16) | (phy << 21));

 while (((value = CSR_READ_4(sc, FXP_CSR_MDICONTROL)) & 0x10000000) == 0
     && count--)
  DELAY(10);

 if (count <= 0)
  device_printf(dev, "fxp_miibus_readreg: timed out\n");

 return (value & 0xffff);
}

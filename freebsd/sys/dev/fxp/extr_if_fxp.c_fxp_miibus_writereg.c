
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
 int FXP_MDI_WRITE ;
 struct fxp_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
fxp_miibus_writereg(device_t dev, int phy, int reg, int value)
{
 struct fxp_softc *sc = device_get_softc(dev);
 int count = 10000;

 CSR_WRITE_4(sc, FXP_CSR_MDICONTROL,
     (FXP_MDI_WRITE << 26) | (reg << 16) | (phy << 21) |
     (value & 0xffff));

 while ((CSR_READ_4(sc, FXP_CSR_MDICONTROL) & 0x10000000) == 0 &&
     count--)
  DELAY(10);

 if (count <= 0)
  device_printf(dev, "fxp_miibus_writereg: timed out\n");
 return (0);
}

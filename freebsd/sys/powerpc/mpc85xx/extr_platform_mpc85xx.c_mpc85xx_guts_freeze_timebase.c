
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mpc85xx_guts_softc {int sc_mem; } ;
typedef int device_t ;


 int DEVDISR_TB0 ;
 int DEVDISR_TB1 ;
 int GUTS_DEVDISR ;
 int bus_read_4 (int ,int ) ;
 int bus_write_4 (int ,int ,int) ;
 struct mpc85xx_guts_softc* device_get_softc (int ) ;

__attribute__((used)) static void
mpc85xx_guts_freeze_timebase(device_t dev, bool freeze)
{
 struct mpc85xx_guts_softc *sc;
 uint32_t devdisr;

 sc = device_get_softc(dev);

 devdisr = bus_read_4(sc->sc_mem, GUTS_DEVDISR);
 if (freeze)
  bus_write_4(sc->sc_mem, GUTS_DEVDISR,
      devdisr | (DEVDISR_TB0 | DEVDISR_TB1));
 else
  bus_write_4(sc->sc_mem, GUTS_DEVDISR,
      devdisr & ~(DEVDISR_TB0 | DEVDISR_TB1));
}

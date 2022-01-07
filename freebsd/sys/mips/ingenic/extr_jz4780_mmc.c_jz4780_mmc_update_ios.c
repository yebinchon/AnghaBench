
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_ios {int bus_width; scalar_t__ clock; } ;
struct TYPE_2__ {struct mmc_ios ios; } ;
struct jz4780_mmc_softc {int sc_cmdat; TYPE_1__ sc_host; } ;
typedef int device_t ;


 int JZ_BUS_1BIT ;
 int JZ_BUS_4BIT ;
 int JZ_BUS_8BIT ;
 int JZ_BUS_WIDTH_M ;



 struct jz4780_mmc_softc* device_get_softc (int ) ;
 int jz4780_mmc_config_clock (struct jz4780_mmc_softc*,scalar_t__) ;

__attribute__((used)) static int
jz4780_mmc_update_ios(device_t bus, device_t child)
{
 struct jz4780_mmc_softc *sc;
 struct mmc_ios *ios;
 int error;

 sc = device_get_softc(bus);
 ios = &sc->sc_host.ios;
 if (ios->clock) {

  error = jz4780_mmc_config_clock(sc, ios->clock);
  if (error != 0)
   return (error);
 }


 switch (ios->bus_width) {
 case 130:
  sc->sc_cmdat &= ~(JZ_BUS_WIDTH_M);
  sc->sc_cmdat |= JZ_BUS_1BIT;
  break;
 case 129:
  sc->sc_cmdat &= ~(JZ_BUS_WIDTH_M);
  sc->sc_cmdat |= JZ_BUS_4BIT;
  break;
 case 128:
  sc->sc_cmdat &= ~(JZ_BUS_WIDTH_M);
  sc->sc_cmdat |= JZ_BUS_8BIT;
  break;
 }
 return (0);
}

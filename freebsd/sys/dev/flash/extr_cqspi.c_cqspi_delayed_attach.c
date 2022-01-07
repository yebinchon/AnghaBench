
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cqspi_softc {int config_intrhook; int dev; } ;


 int bus_generic_attach (int ) ;
 int config_intrhook_disestablish (int *) ;
 int cqspi_add_devices (int ) ;

__attribute__((used)) static void
cqspi_delayed_attach(void *arg)
{
 struct cqspi_softc *sc;

 sc = arg;

 cqspi_add_devices(sc->dev);
 bus_generic_attach(sc->dev);

 config_intrhook_disestablish(&sc->config_intrhook);
}

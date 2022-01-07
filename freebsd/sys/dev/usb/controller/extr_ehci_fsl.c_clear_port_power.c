
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sc_io_hdl; int sc_io_tag; } ;
typedef TYPE_1__ ehci_softc_t ;


 int PORTSC ;
 int PORT_POWER_MASK ;
 int bus_space_read_4 (int ,int ,int ) ;
 int bus_space_write_4 (int ,int ,int ,int) ;

__attribute__((used)) static void
clear_port_power(ehci_softc_t *sc)
{
 int tmp;

 tmp = bus_space_read_4(sc->sc_io_tag, sc->sc_io_hdl, PORTSC);
 bus_space_write_4(sc->sc_io_tag, sc->sc_io_hdl, PORTSC, tmp & ~PORT_POWER_MASK);
}

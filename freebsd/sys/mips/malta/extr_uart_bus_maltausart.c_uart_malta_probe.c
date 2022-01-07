
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {void* bsh; void* bst; } ;
struct uart_softc {TYPE_2__ sc_bas; TYPE_3__* sc_sysdev; int * sc_class; } ;
typedef int device_t ;
struct TYPE_4__ {void* bsh; void* bst; } ;
struct TYPE_6__ {TYPE_1__ bas; } ;


 int MALTA_UART0ADR ;
 void* MIPS_PHYS_TO_KSEG1 (int ) ;
 TYPE_3__* SLIST_FIRST (int *) ;
 int bcopy (TYPE_1__*,TYPE_2__*,int) ;
 struct uart_softc* device_get_softc (int ) ;
 void* mips_bus_space_generic ;
 int uart_bus_probe (int ,int ,int ,int ,int ,int ,int ) ;
 int uart_ns8250_class ;
 int uart_sysdevs ;

__attribute__((used)) static int
uart_malta_probe(device_t dev)
{
 struct uart_softc *sc;

 sc = device_get_softc(dev);
 sc->sc_sysdev = SLIST_FIRST(&uart_sysdevs);
 sc->sc_class = &uart_ns8250_class;
 bcopy(&sc->sc_sysdev->bas, &sc->sc_bas, sizeof(sc->sc_bas));
 sc->sc_sysdev->bas.bst = mips_bus_space_generic;
 sc->sc_sysdev->bas.bsh = MIPS_PHYS_TO_KSEG1(MALTA_UART0ADR);
 sc->sc_bas.bst = mips_bus_space_generic;
 sc->sc_bas.bsh = MIPS_PHYS_TO_KSEG1(MALTA_UART0ADR);
 return(uart_bus_probe(dev, 0, 0, 0, 0, 0, 0));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_opal_softc {scalar_t__ vtermid; int polltime; int tp; int callout; int sc_icookie; int * irqres; scalar_t__ irqrid; int dev; int sc_mtx; int node; } ;
typedef int device_t ;
struct TYPE_2__ {int cn_name; } ;


 int CALLOUT_MPSAFE ;
 int INTR_MPSAFE ;
 int INTR_TYPE_TTY ;
 int MTX_NOWITNESS ;
 int MTX_QUIET ;
 int MTX_SPIN ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int * bus_alloc_resource_any (int ,int ,scalar_t__*,int) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct uart_opal_softc*,int *) ;
 int callout_init (int *,int ) ;
 int callout_reset (int *,int,int ,struct uart_opal_softc*) ;
 struct uart_opal_softc* console_sc ;
 int device_get_nameunit (int ) ;
 struct uart_opal_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int device_set_softc (int ,struct uart_opal_softc*) ;
 int hz ;
 int mtx_init (int *,int ,int *,int) ;
 int ofw_bus_get_node (int ) ;
 int sprintf (int ,char*,int) ;
 int tty_alloc (int *,struct uart_opal_softc*) ;
 int tty_init_console (int ,int ) ;
 int tty_makedev (int ,int *,char*,int) ;
 TYPE_1__ uart_opal_consdev ;
 int uart_opal_intr ;
 int uart_opal_probe_node (struct uart_opal_softc*) ;
 int uart_opal_tty_class ;

__attribute__((used)) static int
uart_opal_attach(device_t dev)
{
 struct uart_opal_softc *sc;
 int unit;

 sc = device_get_softc(dev);
 sc->node = ofw_bus_get_node(dev);
 uart_opal_probe_node(sc);

 unit = device_get_unit(dev);
 mtx_init(&sc->sc_mtx, device_get_nameunit(dev), ((void*)0),
     MTX_SPIN | MTX_QUIET | MTX_NOWITNESS);

 if (console_sc != ((void*)0) && console_sc->vtermid == sc->vtermid) {
  device_printf(dev, "console\n");
  device_set_softc(dev, console_sc);
  sc = console_sc;
  sprintf(uart_opal_consdev.cn_name, "ttyu%r", unit);
 }
 sc->tp = tty_alloc(&uart_opal_tty_class, sc);

 if (console_sc == sc)
  tty_init_console(sc->tp, 0);

 sc->dev = dev;
 sc->irqrid = 0;
 sc->irqres = bus_alloc_resource_any(dev, SYS_RES_IRQ, &sc->irqrid,
     RF_ACTIVE | RF_SHAREABLE);
 if (sc->irqres != ((void*)0)) {
  bus_setup_intr(dev, sc->irqres, INTR_TYPE_TTY | INTR_MPSAFE,
      ((void*)0), uart_opal_intr, sc, &sc->sc_icookie);
 } else {
  callout_init(&sc->callout, CALLOUT_MPSAFE);
  sc->polltime = hz / 20;
  if (sc->polltime < 1)
   sc->polltime = 1;
  callout_reset(&sc->callout, sc->polltime, uart_opal_intr, sc);
 }

 tty_makedev(sc->tp, ((void*)0), "u%r", unit);

 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_phyp_softc {scalar_t__ vtermid; int polltime; int tp; int callout; int sc_icookie; int * irqres; scalar_t__ irqrid; int outseqno; int sc_mtx; int node; int dev; } ;
typedef int device_t ;
struct TYPE_2__ {int cn_name; } ;


 int INTR_MPSAFE ;
 int INTR_TYPE_TTY ;
 int MTX_NOWITNESS ;
 int MTX_QUIET ;
 int MTX_SPIN ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int * bus_alloc_resource_any (int ,int ,scalar_t__*,int) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct uart_phyp_softc*,int *) ;
 int callout_init (int *,int) ;
 int callout_reset (int *,int,int ,struct uart_phyp_softc*) ;
 struct uart_phyp_softc* console_sc ;
 int device_get_nameunit (int ) ;
 struct uart_phyp_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int hz ;
 int mtx_init (int *,int ,int *,int) ;
 int ofw_bus_get_node (int ) ;
 int sprintf (int ,char*,int) ;
 int tty_alloc (int *,struct uart_phyp_softc*) ;
 int tty_init_console (int ,int ) ;
 int tty_makedev (int ,int *,char*,int) ;
 TYPE_1__ uart_phyp_consdev ;
 int uart_phyp_intr ;
 int uart_phyp_probe_node (struct uart_phyp_softc*) ;
 int uart_phyp_tty_class ;

__attribute__((used)) static int
uart_phyp_attach(device_t dev)
{
 struct uart_phyp_softc *sc;
 int unit;

 sc = device_get_softc(dev);
 sc->dev = dev;
 sc->node = ofw_bus_get_node(dev);
 uart_phyp_probe_node(sc);

 unit = device_get_unit(dev);
 sc->tp = tty_alloc(&uart_phyp_tty_class, sc);
 mtx_init(&sc->sc_mtx, device_get_nameunit(dev), ((void*)0),
     MTX_SPIN | MTX_QUIET | MTX_NOWITNESS);

 if (console_sc != ((void*)0) && console_sc->vtermid == sc->vtermid) {
  sc->outseqno = console_sc->outseqno;
  console_sc = sc;
  sprintf(uart_phyp_consdev.cn_name, "ttyu%r", unit);
  tty_init_console(sc->tp, 0);
 }

 sc->irqrid = 0;
 sc->irqres = bus_alloc_resource_any(dev, SYS_RES_IRQ, &sc->irqrid,
     RF_ACTIVE | RF_SHAREABLE);
 if (sc->irqres != ((void*)0)) {
  bus_setup_intr(dev, sc->irqres, INTR_TYPE_TTY | INTR_MPSAFE,
      ((void*)0), uart_phyp_intr, sc, &sc->sc_icookie);
 } else {
  callout_init(&sc->callout, 1);
  sc->polltime = hz / 20;
  if (sc->polltime < 1)
   sc->polltime = 1;
  callout_reset(&sc->callout, sc->polltime, uart_phyp_intr, sc);
 }

 tty_makedev(sc->tp, ((void*)0), "u%r", unit);

 return (0);
}

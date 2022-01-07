
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int timeout_t ;
struct TYPE_6__ {int bst; int bsh; } ;
struct uart_softc {int sc_leaving; int sc_rxbufsz; int sc_rxfifosz; int sc_txfifosz; int sc_testintr; int sc_fastintr; int sc_polled; int sc_hwmtx_s; int * sc_rres; int sc_rrid; int sc_rtype; int * sc_ires; int sc_irid; int sc_icookie; void* sc_rxbuf; void* sc_txbuf; int * sc_hwmtx; TYPE_3__* sc_sysdev; int sc_timer; scalar_t__ sc_hwoflow; scalar_t__ sc_hwiflow; TYPE_2__ sc_bas; TYPE_1__* sc_class; } ;
typedef int driver_intr_t ;
typedef int device_t ;
struct TYPE_8__ {scalar_t__ size; } ;
struct TYPE_7__ {int baudrate; int type; size_t parity; int databits; int stopbits; int (* attach ) (struct uart_softc*) ;int * hwmtx; struct uart_softc* sc; } ;
struct TYPE_5__ {scalar_t__ size; } ;


 int ENXIO ;
 int FILTER_SCHEDULE_THREAD ;
 int INTR_MPSAFE ;
 int INTR_TYPE_TTY ;
 int MAX (int,int) ;
 int MTX_SPIN ;
 int M_UART ;
 int M_WAITOK ;
 int M_ZERO ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int UART_ATTACH (struct uart_softc*) ;



 scalar_t__ UART_IOCTL (struct uart_softc*,int ,intptr_t) ;
 int UART_IOCTL_BAUD ;
 int bcopy (struct uart_softc*,struct uart_softc*,int) ;
 scalar_t__ bootverbose ;
 void* bus_alloc_resource_any (int ,int ,int *,int) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_setup_intr (int ,int *,int,int (*) (struct uart_softc*),int *,struct uart_softc*,int *) ;
 int bus_teardown_intr (int ,int *,int ) ;
 int callout_init (int *,int) ;
 int callout_reset (int *,int,int *,struct uart_softc*) ;
 TYPE_4__* device_get_driver (int ) ;
 struct uart_softc* device_get_softc (int ) ;
 int device_print_prettyname (int ) ;
 int device_printf (int ,char*) ;
 int device_set_softc (int ,struct uart_softc*) ;
 int free (void*,int ) ;
 int hz ;
 void* malloc (int,int ,int) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,char*,int *,int ) ;
 int printf (char*,...) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;
 int stub1 (struct uart_softc*) ;
 int uart_force_poll ;
 int uart_intr (struct uart_softc*) ;
 int uart_poll_freq ;
 int uart_pps_init (struct uart_softc*) ;
 int uart_tty_attach (struct uart_softc*) ;

int
uart_bus_attach(device_t dev)
{
 struct uart_softc *sc, *sc0;
 const char *sep;
 int error, filt;







 sc0 = device_get_softc(dev);
 if (sc0->sc_class->size > device_get_driver(dev)->size) {
  sc = malloc(sc0->sc_class->size, M_UART, M_WAITOK|M_ZERO);
  bcopy(sc0, sc, sizeof(*sc));
  device_set_softc(dev, sc);
 } else
  sc = sc0;





 if (sc->sc_sysdev != ((void*)0))
  sc->sc_sysdev->sc = sc;






 sc->sc_leaving = 1;

 mtx_init(&sc->sc_hwmtx_s, "uart_hwmtx", ((void*)0), MTX_SPIN);
 if (sc->sc_hwmtx == ((void*)0))
  sc->sc_hwmtx = &sc->sc_hwmtx_s;





 sc->sc_rres = bus_alloc_resource_any(dev, sc->sc_rtype, &sc->sc_rrid,
     RF_ACTIVE);
 if (sc->sc_rres == ((void*)0)) {
  mtx_destroy(&sc->sc_hwmtx_s);
  return (ENXIO);
 }
 sc->sc_bas.bsh = rman_get_bushandle(sc->sc_rres);
 sc->sc_bas.bst = rman_get_bustag(sc->sc_rres);







 sc->sc_rxbufsz = MAX(384, sc->sc_rxfifosz * 3);
 sc->sc_rxbuf = malloc(sc->sc_rxbufsz * sizeof(*sc->sc_rxbuf),
     M_UART, M_WAITOK);
 sc->sc_txbuf = malloc(sc->sc_txfifosz * sizeof(*sc->sc_txbuf),
     M_UART, M_WAITOK);

 error = UART_ATTACH(sc);
 if (error)
  goto fail;

 if (sc->sc_hwiflow || sc->sc_hwoflow) {
  sep = "";
  device_print_prettyname(dev);
  if (sc->sc_hwiflow) {
   printf("%sRTS iflow", sep);
   sep = ", ";
  }
  if (sc->sc_hwoflow) {
   printf("%sCTS oflow", sep);
   sep = ", ";
  }
  printf("\n");
 }

 if (sc->sc_sysdev != ((void*)0)) {
  if (sc->sc_sysdev->baudrate == 0) {
   if (UART_IOCTL(sc, UART_IOCTL_BAUD,
       (intptr_t)&sc->sc_sysdev->baudrate) != 0)
    sc->sc_sysdev->baudrate = -1;
  }
  switch (sc->sc_sysdev->type) {
  case 130:
   device_printf(dev, "console");
   break;
  case 129:
   device_printf(dev, "debug port");
   break;
  case 128:
   device_printf(dev, "keyboard");
   break;
  default:
   device_printf(dev, "unknown system device");
   break;
  }
  printf(" (%d,%c,%d,%d)\n", sc->sc_sysdev->baudrate,
      "noems"[sc->sc_sysdev->parity], sc->sc_sysdev->databits,
      sc->sc_sysdev->stopbits);
 }

 sc->sc_leaving = 0;
 sc->sc_testintr = 1;
 filt = uart_intr(sc);
 sc->sc_testintr = 0;






 if (filt != FILTER_SCHEDULE_THREAD && !uart_force_poll) {
  sc->sc_ires = bus_alloc_resource_any(dev, SYS_RES_IRQ,
      &sc->sc_irid, RF_ACTIVE | RF_SHAREABLE);
 }
 if (sc->sc_ires != ((void*)0)) {
  error = bus_setup_intr(dev, sc->sc_ires, INTR_TYPE_TTY,
      uart_intr, ((void*)0), sc, &sc->sc_icookie);
  sc->sc_fastintr = (error == 0) ? 1 : 0;

  if (!sc->sc_fastintr)
   error = bus_setup_intr(dev, sc->sc_ires,
       INTR_TYPE_TTY | INTR_MPSAFE, ((void*)0),
       (driver_intr_t *)uart_intr, sc, &sc->sc_icookie);

  if (error) {
   device_printf(dev, "could not activate interrupt\n");
   bus_release_resource(dev, SYS_RES_IRQ, sc->sc_irid,
       sc->sc_ires);
   sc->sc_ires = ((void*)0);
  }
 }
 if (sc->sc_ires == ((void*)0)) {

  sc->sc_polled = 1;
  callout_init(&sc->sc_timer, 1);
  callout_reset(&sc->sc_timer, hz / uart_poll_freq,
      (timeout_t *)uart_intr, sc);
 }

 if (bootverbose && (sc->sc_fastintr || sc->sc_polled)) {
  sep = "";
  device_print_prettyname(dev);
  if (sc->sc_fastintr) {
   printf("%sfast interrupt", sep);
   sep = ", ";
  }
  if (sc->sc_polled) {
   printf("%spolled mode (%dHz)", sep, uart_poll_freq);
   sep = ", ";
  }
  printf("\n");
 }

 if (sc->sc_sysdev != ((void*)0) && sc->sc_sysdev->attach != ((void*)0)) {
  if ((error = sc->sc_sysdev->attach(sc)) != 0)
   goto fail;
 } else {
  if ((error = uart_tty_attach(sc)) != 0)
   goto fail;
  uart_pps_init(sc);
 }

 if (sc->sc_sysdev != ((void*)0))
  sc->sc_sysdev->hwmtx = sc->sc_hwmtx;

 return (0);

 fail:
 free(sc->sc_txbuf, M_UART);
 free(sc->sc_rxbuf, M_UART);

 if (sc->sc_ires != ((void*)0)) {
  bus_teardown_intr(dev, sc->sc_ires, sc->sc_icookie);
  bus_release_resource(dev, SYS_RES_IRQ, sc->sc_irid,
      sc->sc_ires);
 }
 bus_release_resource(dev, sc->sc_rtype, sc->sc_rrid, sc->sc_rres);

 mtx_destroy(&sc->sc_hwmtx_s);

 return (error);
}

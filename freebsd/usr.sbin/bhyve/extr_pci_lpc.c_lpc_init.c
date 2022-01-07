
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmctx {int dummy; } ;
struct lpc_uart_softc {char* opts; int enabled; int iobase; int uart_softc; int irq; } ;
struct inout_port {char const* name; struct lpc_uart_softc* arg; int handler; int flags; int size; int port; } ;


 int IOPORT_F_INOUT ;
 int LPC_UART_NUM ;
 int UART_IO_BAR_SIZE ;
 int assert (int) ;
 int bootrom_init (struct vmctx*,int *) ;
 int bzero (struct inout_port*,int) ;
 int fprintf (int ,char*,char const*,...) ;
 int lpc_uart_intr_assert ;
 int lpc_uart_intr_deassert ;
 int lpc_uart_io_handler ;
 char** lpc_uart_names ;
 struct lpc_uart_softc* lpc_uart_softc ;
 int pci_irq_reserve (int ) ;
 int register_inout (struct inout_port*) ;
 int * romfile ;
 int stderr ;
 int uart_init (int ,int ,struct lpc_uart_softc*) ;
 scalar_t__ uart_legacy_alloc (int,int *,int *) ;
 scalar_t__ uart_set_backend (int ,char*) ;

__attribute__((used)) static int
lpc_init(struct vmctx *ctx)
{
 struct lpc_uart_softc *sc;
 struct inout_port iop;
 const char *name;
 int unit, error;

 if (romfile != ((void*)0)) {
  error = bootrom_init(ctx, romfile);
  if (error)
   return (error);
 }


 for (unit = 0; unit < LPC_UART_NUM; unit++) {
  sc = &lpc_uart_softc[unit];
  name = lpc_uart_names[unit];

  if (uart_legacy_alloc(unit, &sc->iobase, &sc->irq) != 0) {
   fprintf(stderr, "Unable to allocate resources for "
       "LPC device %s\n", name);
   return (-1);
  }
  pci_irq_reserve(sc->irq);

  sc->uart_softc = uart_init(lpc_uart_intr_assert,
        lpc_uart_intr_deassert, sc);

  if (uart_set_backend(sc->uart_softc, sc->opts) != 0) {
   fprintf(stderr, "Unable to initialize backend '%s' "
       "for LPC device %s\n", sc->opts, name);
   return (-1);
  }

  bzero(&iop, sizeof(struct inout_port));
  iop.name = name;
  iop.port = sc->iobase;
  iop.size = UART_IO_BAR_SIZE;
  iop.flags = IOPORT_F_INOUT;
  iop.handler = lpc_uart_io_handler;
  iop.arg = sc;

  error = register_inout(&iop);
  assert(error == 0);
  sc->enabled = 1;
 }

 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int driver_abi; int driver_mtx; int ppscap; } ;
struct uart_softc {TYPE_1__ sc_pps; int sc_pps_mode; int sc_dev; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;


 int CTLFLAG_RWTUN ;
 int CTLTYPE_INT ;
 int OID_AUTO ;
 int PPS_ABI_VERSION ;
 int PPS_CAPTUREBOTH ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,int ,int ,char*,int,struct uart_softc*,int ,int ,char*,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int TUNABLE_INT_FETCH (char*,int *) ;
 int UART_PPS_CTS ;
 int UART_PPS_DCD ;
 int UART_PPS_DISABLED ;
 scalar_t__ bootverbose ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int device_printf (int ,char*,int ) ;
 int pps_init_abi (TYPE_1__*) ;
 int uart_pps_mode_sysctl ;
 int uart_pps_mode_valid (int ) ;
 int uart_pps_print_mode (struct uart_softc*) ;
 int uart_tty_getlock (struct uart_softc*) ;

__attribute__((used)) static void
uart_pps_init(struct uart_softc *sc)
{
 struct sysctl_ctx_list *ctx;
 struct sysctl_oid *tree;

 ctx = device_get_sysctl_ctx(sc->sc_dev);
 tree = device_get_sysctl_tree(sc->sc_dev);
 sc->sc_pps_mode = UART_PPS_DCD;

 TUNABLE_INT_FETCH("hw.uart.pps_mode", &sc->sc_pps_mode);
 SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(tree), OID_AUTO, "pps_mode",
     CTLTYPE_INT | CTLFLAG_RWTUN, sc, 0, uart_pps_mode_sysctl, "I",
     "pulse mode: 0/1/2=disabled/CTS/DCD; "
     "add 0x10 to invert, 0x20 for narrow pulse");

 if (!uart_pps_mode_valid(sc->sc_pps_mode)) {
  device_printf(sc->sc_dev,
      "Invalid pps_mode 0x%02x configured; disabling PPS capture\n",
      sc->sc_pps_mode);
  sc->sc_pps_mode = UART_PPS_DISABLED;
 } else if (bootverbose) {
  uart_pps_print_mode(sc);
 }

 sc->sc_pps.ppscap = PPS_CAPTUREBOTH;
 sc->sc_pps.driver_mtx = uart_tty_getlock(sc);
 sc->sc_pps.driver_abi = PPS_ABI_VERSION;
 pps_init_abi(&sc->sc_pps);
}

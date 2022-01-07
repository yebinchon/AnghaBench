
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct rtwn_usb_softc {int uc_rx_buf_size; } ;
struct rtwn_softc {int sc_dev; } ;
typedef int str ;


 int CTLFLAG_RDTUN ;
 int KASSERT (int,char*) ;
 int OID_AUTO ;
 int RTWN_USB_RXBUFSZ_DEF ;
 int RTWN_USB_RXBUFSZ_MAX ;
 int RTWN_USB_RXBUFSZ_MIN ;
 struct rtwn_usb_softc* RTWN_USB_SOFTC (struct rtwn_softc*) ;
 int SYSCTL_ADD_INT (struct sysctl_ctx_list*,int ,int ,char*,int ,int*,int,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int snprintf (char*,int,char*,int,int) ;

__attribute__((used)) static void
rtwn_usb_sysctlattach(struct rtwn_softc *sc)
{
 struct rtwn_usb_softc *uc = RTWN_USB_SOFTC(sc);
 struct sysctl_ctx_list *ctx = device_get_sysctl_ctx(sc->sc_dev);
 struct sysctl_oid *tree = device_get_sysctl_tree(sc->sc_dev);
 char str[64];
 int ret;

 ret = snprintf(str, sizeof(str),
     "Rx buffer size, 512-byte units [%d...%d]",
     RTWN_USB_RXBUFSZ_MIN, RTWN_USB_RXBUFSZ_MAX);
 KASSERT(ret > 0, ("ret (%d) <= 0!\n", ret));
 (void) ret;

 uc->uc_rx_buf_size = RTWN_USB_RXBUFSZ_DEF;
 SYSCTL_ADD_INT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
     "rx_buf_size", CTLFLAG_RDTUN, &uc->uc_rx_buf_size,
     uc->uc_rx_buf_size, str);
 if (uc->uc_rx_buf_size < RTWN_USB_RXBUFSZ_MIN)
  uc->uc_rx_buf_size = RTWN_USB_RXBUFSZ_MIN;
 if (uc->uc_rx_buf_size > RTWN_USB_RXBUFSZ_MAX)
  uc->uc_rx_buf_size = RTWN_USB_RXBUFSZ_MAX;
}

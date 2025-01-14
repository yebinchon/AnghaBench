
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vmbus_xact {int dummy; } ;
struct TYPE_2__ {int hv_paddr; } ;
struct hn_softc {scalar_t__ hn_nvs_ver; int hn_flags; int hn_ifp; int hn_rxbuf_gpadl; int hn_xact; TYPE_1__ hn_rxbuf_dma; int hn_prichan; } ;
struct hn_nvs_rxbuf_connresp {int nvs_status; } ;
struct hn_nvs_rxbuf_conn {int nvs_sig; int nvs_gpadl; int nvs_type; } ;


 int EIO ;
 int ENXIO ;
 int HN_FLAG_RXBUF_CONNECTED ;
 int HN_NVS_RXBUF_SIG ;
 int HN_NVS_STATUS_OK ;
 int HN_NVS_TYPE_RXBUF_CONN ;
 int HN_NVS_TYPE_RXBUF_CONNRESP ;
 scalar_t__ HN_NVS_VERSION_2 ;
 int HN_RXBUF_SIZE ;
 int HN_RXBUF_SIZE_COMPAT ;
 int hn_nvs_disconn_rxbuf (struct hn_softc*) ;
 struct hn_nvs_rxbuf_connresp* hn_nvs_xact_execute (struct hn_softc*,struct vmbus_xact*,struct hn_nvs_rxbuf_conn*,int,size_t*,int ) ;
 int if_printf (int ,char*,...) ;
 int vmbus_chan_gpadl_connect (int ,int ,int,int *) ;
 struct vmbus_xact* vmbus_xact_get (int ,int) ;
 int vmbus_xact_put (struct vmbus_xact*) ;
 struct hn_nvs_rxbuf_conn* vmbus_xact_req_data (struct vmbus_xact*) ;

__attribute__((used)) static int
hn_nvs_conn_rxbuf(struct hn_softc *sc)
{
 struct vmbus_xact *xact = ((void*)0);
 struct hn_nvs_rxbuf_conn *conn;
 const struct hn_nvs_rxbuf_connresp *resp;
 size_t resp_len;
 uint32_t status;
 int error, rxbuf_size;




 if (sc->hn_nvs_ver <= HN_NVS_VERSION_2)
  rxbuf_size = HN_RXBUF_SIZE_COMPAT;
 else
  rxbuf_size = HN_RXBUF_SIZE;
 error = vmbus_chan_gpadl_connect(sc->hn_prichan,
     sc->hn_rxbuf_dma.hv_paddr, rxbuf_size, &sc->hn_rxbuf_gpadl);
 if (error) {
  if_printf(sc->hn_ifp, "rxbuf gpadl conn failed: %d\n",
      error);
  goto cleanup;
 }





 xact = vmbus_xact_get(sc->hn_xact, sizeof(*conn));
 if (xact == ((void*)0)) {
  if_printf(sc->hn_ifp, "no xact for nvs rxbuf conn\n");
  error = ENXIO;
  goto cleanup;
 }
 conn = vmbus_xact_req_data(xact);
 conn->nvs_type = HN_NVS_TYPE_RXBUF_CONN;
 conn->nvs_gpadl = sc->hn_rxbuf_gpadl;
 conn->nvs_sig = HN_NVS_RXBUF_SIG;

 resp_len = sizeof(*resp);
 resp = hn_nvs_xact_execute(sc, xact, conn, sizeof(*conn), &resp_len,
     HN_NVS_TYPE_RXBUF_CONNRESP);
 if (resp == ((void*)0)) {
  if_printf(sc->hn_ifp, "exec nvs rxbuf conn failed\n");
  error = EIO;
  goto cleanup;
 }

 status = resp->nvs_status;
 vmbus_xact_put(xact);
 xact = ((void*)0);

 if (status != HN_NVS_STATUS_OK) {
  if_printf(sc->hn_ifp, "nvs rxbuf conn failed: %x\n", status);
  error = EIO;
  goto cleanup;
 }
 sc->hn_flags |= HN_FLAG_RXBUF_CONNECTED;

 return (0);

cleanup:
 if (xact != ((void*)0))
  vmbus_xact_put(xact);
 hn_nvs_disconn_rxbuf(sc);
 return (error);
}

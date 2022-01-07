
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_long ;
struct vmbus_xact {int dummy; } ;
struct TYPE_2__ {int hv_paddr; } ;
struct hn_softc {int hn_chim_szmax; int hn_chim_cnt; int hn_chim_bmap_cnt; int hn_ifp; int hn_flags; int hn_chim_bmap; int hn_chim_gpadl; int hn_xact; TYPE_1__ hn_chim_dma; int hn_prichan; } ;
struct hn_nvs_chim_connresp {int nvs_status; int nvs_sectsz; } ;
struct hn_nvs_chim_conn {int nvs_sig; int nvs_gpadl; int nvs_type; } ;


 int EIO ;
 int ENXIO ;
 int HN_CHIM_SIZE ;
 int HN_FLAG_CHIM_CONNECTED ;
 int HN_NVS_CHIM_SIG ;
 int HN_NVS_STATUS_OK ;
 int HN_NVS_TYPE_CHIM_CONN ;
 int HN_NVS_TYPE_CHIM_CONNRESP ;
 int LONG_BIT ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 scalar_t__ bootverbose ;
 int hn_nvs_disconn_chim (struct hn_softc*) ;
 struct hn_nvs_chim_connresp* hn_nvs_xact_execute (struct hn_softc*,struct vmbus_xact*,struct hn_nvs_chim_conn*,int,size_t*,int ) ;
 int if_printf (int ,char*,...) ;
 int malloc (int,int ,int) ;
 int vmbus_chan_gpadl_connect (int ,int ,int,int *) ;
 struct vmbus_xact* vmbus_xact_get (int ,int) ;
 int vmbus_xact_put (struct vmbus_xact*) ;
 struct hn_nvs_chim_conn* vmbus_xact_req_data (struct vmbus_xact*) ;

__attribute__((used)) static int
hn_nvs_conn_chim(struct hn_softc *sc)
{
 struct vmbus_xact *xact = ((void*)0);
 struct hn_nvs_chim_conn *chim;
 const struct hn_nvs_chim_connresp *resp;
 size_t resp_len;
 uint32_t status, sectsz;
 int error;
 error = vmbus_chan_gpadl_connect(sc->hn_prichan,
       sc->hn_chim_dma.hv_paddr, HN_CHIM_SIZE, &sc->hn_chim_gpadl);
 if (error) {
  if_printf(sc->hn_ifp, "chim gpadl conn failed: %d\n", error);
  goto cleanup;
 }





 xact = vmbus_xact_get(sc->hn_xact, sizeof(*chim));
 if (xact == ((void*)0)) {
  if_printf(sc->hn_ifp, "no xact for nvs chim conn\n");
  error = ENXIO;
  goto cleanup;
 }
 chim = vmbus_xact_req_data(xact);
 chim->nvs_type = HN_NVS_TYPE_CHIM_CONN;
 chim->nvs_gpadl = sc->hn_chim_gpadl;
 chim->nvs_sig = HN_NVS_CHIM_SIG;

 resp_len = sizeof(*resp);
 resp = hn_nvs_xact_execute(sc, xact, chim, sizeof(*chim), &resp_len,
     HN_NVS_TYPE_CHIM_CONNRESP);
 if (resp == ((void*)0)) {
  if_printf(sc->hn_ifp, "exec nvs chim conn failed\n");
  error = EIO;
  goto cleanup;
 }

 status = resp->nvs_status;
 sectsz = resp->nvs_sectsz;
 vmbus_xact_put(xact);
 xact = ((void*)0);

 if (status != HN_NVS_STATUS_OK) {
  if_printf(sc->hn_ifp, "nvs chim conn failed: %x\n", status);
  error = EIO;
  goto cleanup;
 }
 if (sectsz == 0 || sectsz % sizeof(uint32_t) != 0) {



  if (sectsz == 0) {
   if_printf(sc->hn_ifp, "zero chimney sending buffer "
       "section size\n");
  } else {
   if_printf(sc->hn_ifp, "misaligned chimney sending "
       "buffers, section size: %u\n", sectsz);
  }
  sc->hn_chim_szmax = 0;
  sc->hn_chim_cnt = 0;
  sc->hn_flags |= HN_FLAG_CHIM_CONNECTED;
  return (0);
 }

 sc->hn_chim_szmax = sectsz;
 sc->hn_chim_cnt = HN_CHIM_SIZE / sc->hn_chim_szmax;
 if (HN_CHIM_SIZE % sc->hn_chim_szmax != 0) {
  if_printf(sc->hn_ifp, "chimney sending sections are "
      "not properly aligned\n");
 }
 if (sc->hn_chim_cnt % LONG_BIT != 0) {
  if_printf(sc->hn_ifp, "discard %d chimney sending sections\n",
      sc->hn_chim_cnt % LONG_BIT);
 }

 sc->hn_chim_bmap_cnt = sc->hn_chim_cnt / LONG_BIT;
 sc->hn_chim_bmap = malloc(sc->hn_chim_bmap_cnt * sizeof(u_long),
     M_DEVBUF, M_WAITOK | M_ZERO);


 sc->hn_flags |= HN_FLAG_CHIM_CONNECTED;
 if (bootverbose) {
  if_printf(sc->hn_ifp, "chimney sending buffer %d/%d\n",
      sc->hn_chim_szmax, sc->hn_chim_cnt);
 }
 return (0);

cleanup:
 if (xact != ((void*)0))
  vmbus_xact_put(xact);
 hn_nvs_disconn_chim(sc);
 return (error);
}

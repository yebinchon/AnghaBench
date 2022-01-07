
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hn_softc {int hn_flags; scalar_t__ hn_chim_gpadl; scalar_t__ hn_chim_bmap_cnt; int * hn_chim_bmap; int hn_ifp; int hn_prichan; } ;
struct hn_nvs_chim_disconn {int nvs_sig; int nvs_type; } ;
typedef int disconn ;


 int HN_FLAG_CHIM_CONNECTED ;
 int HN_FLAG_CHIM_REF ;
 int HN_NVS_CHIM_SIG ;
 int HN_NVS_TYPE_CHIM_DISCONN ;
 int M_DEVBUF ;
 scalar_t__ VMBUS_VERSION_WIN10 ;
 int free (int *,int ) ;
 int hn_nvs_req_send (struct hn_softc*,struct hn_nvs_chim_disconn*,int) ;
 int hz ;
 int if_printf (int ,char*,int) ;
 int memset (struct hn_nvs_chim_disconn*,int ,int) ;
 int pause (char*,int) ;
 int vmbus_chan_gpadl_disconnect (int ,scalar_t__) ;
 int vmbus_chan_is_revoked (int ) ;
 int vmbus_chan_tx_empty (int ) ;
 scalar_t__ vmbus_current_version ;

__attribute__((used)) static void
hn_nvs_disconn_chim(struct hn_softc *sc)
{
 int error;

 if (sc->hn_flags & HN_FLAG_CHIM_CONNECTED) {
  struct hn_nvs_chim_disconn disconn;




  memset(&disconn, 0, sizeof(disconn));
  disconn.nvs_type = HN_NVS_TYPE_CHIM_DISCONN;
  disconn.nvs_sig = HN_NVS_CHIM_SIG;


  error = hn_nvs_req_send(sc, &disconn, sizeof(disconn));
  if (error) {
   if_printf(sc->hn_ifp,
       "send nvs chim disconn failed: %d\n", error);




   if (!vmbus_chan_is_revoked(sc->hn_prichan))
    sc->hn_flags |= HN_FLAG_CHIM_REF;
  }
  sc->hn_flags &= ~HN_FLAG_CHIM_CONNECTED;
  while (!vmbus_chan_tx_empty(sc->hn_prichan) &&
      !vmbus_chan_is_revoked(sc->hn_prichan))
   pause("waittx", 1);




  pause("lingtx", (200 * hz) / 1000);
 }

 if (vmbus_current_version < VMBUS_VERSION_WIN10 && sc->hn_chim_gpadl != 0) {



  error = vmbus_chan_gpadl_disconnect(sc->hn_prichan,
      sc->hn_chim_gpadl);
  if (error) {
   if_printf(sc->hn_ifp,
       "chim gpadl disconn failed: %d\n", error);
   sc->hn_flags |= HN_FLAG_CHIM_REF;
  }
  sc->hn_chim_gpadl = 0;
 }

 if (sc->hn_chim_bmap != ((void*)0)) {
  free(sc->hn_chim_bmap, M_DEVBUF);
  sc->hn_chim_bmap = ((void*)0);
  sc->hn_chim_bmap_cnt = 0;
 }
}

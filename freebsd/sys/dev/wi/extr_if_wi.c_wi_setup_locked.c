
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct wi_softc {int sc_flags; int sc_ntxbuf; scalar_t__ sc_txnext; scalar_t__ sc_txcur; TYPE_1__* sc_txd; int sc_dev; scalar_t__ sc_buflen; } ;
struct wi_frame {int dummy; } ;
struct TYPE_2__ {scalar_t__ d_len; int d_fid; } ;


 int IEEE80211_ADDR_LEN ;
 scalar_t__ IEEE80211_MAX_LEN ;
 int WI_FLAGS_HAS_ROAMING ;
 int WI_RID_ALT_RETRY_CNT ;
 int WI_RID_CREATE_IBSS ;
 int WI_RID_MAC_NODE ;
 int WI_RID_MAX_DATALEN ;
 int WI_RID_PORTTYPE ;
 int WI_RID_ROAMING_MODE ;
 int device_printf (int ,char*,int) ;
 int wi_alloc_fid (struct wi_softc*,scalar_t__,int *) ;
 int wi_reset (struct wi_softc*) ;
 int wi_write_rid (struct wi_softc*,int ,int const*,int ) ;
 int wi_write_val (struct wi_softc*,int ,int) ;

__attribute__((used)) static int
wi_setup_locked(struct wi_softc *sc, int porttype, int mode,
 const uint8_t mac[IEEE80211_ADDR_LEN])
{
 int i;

 wi_reset(sc);

 wi_write_val(sc, WI_RID_PORTTYPE, porttype);
 wi_write_val(sc, WI_RID_CREATE_IBSS, mode);
 wi_write_val(sc, WI_RID_MAX_DATALEN, 2304);

 wi_write_val(sc, WI_RID_ALT_RETRY_CNT, 2);
 if (sc->sc_flags & WI_FLAGS_HAS_ROAMING)
  wi_write_val(sc, WI_RID_ROAMING_MODE, 3);

 wi_write_rid(sc, WI_RID_MAC_NODE, mac, IEEE80211_ADDR_LEN);


 sc->sc_buflen = IEEE80211_MAX_LEN + sizeof(struct wi_frame);
 for (i = 0; i < sc->sc_ntxbuf; i++) {
  int error = wi_alloc_fid(sc, sc->sc_buflen,
      &sc->sc_txd[i].d_fid);
  if (error) {
   device_printf(sc->sc_dev,
       "tx buffer allocation failed (error %u)\n",
       error);
   return error;
  }
  sc->sc_txd[i].d_len = 0;
 }
 sc->sc_txcur = sc->sc_txnext = 0;

 return 0;
}

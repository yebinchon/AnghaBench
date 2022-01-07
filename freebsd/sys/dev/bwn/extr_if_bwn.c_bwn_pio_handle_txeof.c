
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bwn_txstatus {int cookie; } ;
struct bwn_softc {scalar_t__ sc_watchdog_timer; } ;
struct bwn_pio_txqueue {int tq_pktlist; int tq_free; int tq_used; } ;
struct bwn_pio_txpkt {TYPE_2__* tp_m; int * tp_ni; } ;
struct bwn_mac {struct bwn_softc* mac_sc; } ;
struct TYPE_3__ {scalar_t__ len; } ;
struct TYPE_4__ {TYPE_1__ m_pkthdr; } ;


 int BWN_ASSERT_LOCKED (struct bwn_softc*) ;
 scalar_t__ BWN_HDRSIZE (struct bwn_mac*) ;
 int TAILQ_INSERT_TAIL (int *,struct bwn_pio_txpkt*,int ) ;
 struct bwn_pio_txqueue* bwn_pio_parse_cookie (struct bwn_mac*,int ,struct bwn_pio_txpkt**) ;
 int bwn_ratectl_tx_complete (int *,struct bwn_txstatus const*) ;
 int ieee80211_tx_complete (int *,TYPE_2__*,int ) ;
 scalar_t__ roundup (scalar_t__,int) ;
 int tp_list ;

__attribute__((used)) static void
bwn_pio_handle_txeof(struct bwn_mac *mac,
    const struct bwn_txstatus *status)
{
 struct bwn_pio_txqueue *tq;
 struct bwn_pio_txpkt *tp = ((void*)0);
 struct bwn_softc *sc = mac->mac_sc;

 BWN_ASSERT_LOCKED(sc);

 tq = bwn_pio_parse_cookie(mac, status->cookie, &tp);
 if (tq == ((void*)0))
  return;

 tq->tq_used -= roundup(tp->tp_m->m_pkthdr.len + BWN_HDRSIZE(mac), 4);
 tq->tq_free++;

 if (tp->tp_ni != ((void*)0)) {




  bwn_ratectl_tx_complete(tp->tp_ni, status);
 }
 ieee80211_tx_complete(tp->tp_ni, tp->tp_m, 0);
 tp->tp_ni = ((void*)0);
 tp->tp_m = ((void*)0);
 TAILQ_INSERT_TAIL(&tq->tq_pktlist, tp, tp_list);

 sc->sc_watchdog_timer = 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwn_softc {int sc_dev; } ;
struct bwn_pio_txqueue {int tq_index; int tq_size; int tq_pktlist; struct bwn_pio_txpkt* tq_pkts; int tq_free; scalar_t__ tq_base; } ;
struct bwn_pio_txpkt {unsigned int tp_index; struct bwn_pio_txqueue* tp_queue; } ;
struct bwn_mac {struct bwn_softc* mac_sc; } ;


 int BWN_PIO_MAX_TXPACKETS ;
 int BWN_PIO_TXQBUFSIZE ;
 scalar_t__ BWN_PIO_TXQOFFSET (struct bwn_mac*) ;
 unsigned int N (struct bwn_pio_txpkt*) ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct bwn_pio_txpkt*,int ) ;
 int bhnd_get_hwrev (int ) ;
 scalar_t__ bwn_pio_idx2base (struct bwn_mac*,int) ;
 int bwn_pio_read_2 (struct bwn_mac*,struct bwn_pio_txqueue*,int ) ;
 int tp_list ;

__attribute__((used)) static void
bwn_pio_set_txqueue(struct bwn_mac *mac, struct bwn_pio_txqueue *tq,
    int index)
{
 struct bwn_pio_txpkt *tp;
 struct bwn_softc *sc = mac->mac_sc;
 unsigned int i;

 tq->tq_base = bwn_pio_idx2base(mac, index) + BWN_PIO_TXQOFFSET(mac);
 tq->tq_index = index;

 tq->tq_free = BWN_PIO_MAX_TXPACKETS;
 if (bhnd_get_hwrev(sc->sc_dev) >= 8)
  tq->tq_size = 1920;
 else {
  tq->tq_size = bwn_pio_read_2(mac, tq, BWN_PIO_TXQBUFSIZE);
  tq->tq_size -= 80;
 }

 TAILQ_INIT(&tq->tq_pktlist);
 for (i = 0; i < N(tq->tq_pkts); i++) {
  tp = &(tq->tq_pkts[i]);
  tp->tp_index = i;
  tp->tp_queue = tq;
  TAILQ_INSERT_TAIL(&tq->tq_pktlist, tp, tp_list);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct mbuf {int dummy; } ;
struct bxe_softc {int dummy; } ;
struct TYPE_2__ {int tx_queue_xoff; int mbuf_alloc_tx; int tx_encap_failures; } ;
struct bxe_fastpath {int watchdog_timer; TYPE_1__ eth_q_stats; } ;
typedef int if_t ;


 int BXE_FP_TX_LOCK_ASSERT (struct bxe_fastpath*) ;
 scalar_t__ BXE_TX_CLEANUP_THRESHOLD ;
 int BXE_TX_TIMEOUT ;
 int IFF_DRV_OACTIVE ;
 scalar_t__ __predict_false (int ) ;
 scalar_t__ bxe_tx_avail (struct bxe_softc*,struct bxe_fastpath*) ;
 int bxe_tx_encap (struct bxe_fastpath*,struct mbuf**) ;
 int bxe_txeof (struct bxe_softc*,struct bxe_fastpath*) ;
 struct mbuf* if_dequeue (int ) ;
 int if_etherbpfmtap (int ,struct mbuf*) ;
 int if_getdrvflags (int ) ;
 int if_sendq_empty (int ) ;
 int if_sendq_prepend (int ,struct mbuf*) ;
 int if_setdrvflagbits (int ,int,int ) ;

__attribute__((used)) static void
bxe_tx_start_locked(struct bxe_softc *sc,
                    if_t ifp,
                    struct bxe_fastpath *fp)
{
    struct mbuf *m = ((void*)0);
    int tx_count = 0;
    uint16_t tx_bd_avail;

    BXE_FP_TX_LOCK_ASSERT(fp);


    while (!if_sendq_empty(ifp)) {





        m = if_dequeue(ifp);
        if (__predict_false(m == ((void*)0))) {
            break;
        }


        fp->eth_q_stats.mbuf_alloc_tx++;






        if (__predict_false(bxe_tx_encap(fp, &m))) {
            fp->eth_q_stats.tx_encap_failures++;
            if (m != ((void*)0)) {

                if_setdrvflagbits(ifp, IFF_DRV_OACTIVE, 0);
  if_sendq_prepend(ifp, m);
                fp->eth_q_stats.mbuf_alloc_tx--;
                fp->eth_q_stats.tx_queue_xoff++;
            }


            break;
        }


        tx_count++;


        if_etherbpfmtap(ifp, m);

        tx_bd_avail = bxe_tx_avail(sc, fp);


        if (tx_bd_avail < BXE_TX_CLEANUP_THRESHOLD) {

            bxe_txeof(sc, fp);
            if (if_getdrvflags(ifp) & IFF_DRV_OACTIVE) {
                break;
            }
        }
    }


    if (tx_count > 0) {

        fp->watchdog_timer = BXE_TX_TIMEOUT;
    }
}

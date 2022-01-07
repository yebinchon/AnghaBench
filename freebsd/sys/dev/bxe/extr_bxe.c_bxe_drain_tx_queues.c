
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bxe_softc {int num_queues; struct bxe_fastpath* fp; } ;
struct bxe_fastpath {int dummy; } ;


 int BLOGE (struct bxe_softc*,char*,int) ;
 int BXE_FP_TX_LOCK (struct bxe_fastpath*) ;
 int BXE_FP_TX_UNLOCK (struct bxe_fastpath*) ;
 int DELAY (int) ;
 scalar_t__ bxe_has_tx_work (struct bxe_fastpath*) ;
 int bxe_panic (struct bxe_softc*,char*) ;
 int bxe_txeof (struct bxe_softc*,struct bxe_fastpath*) ;
 int rmb () ;

__attribute__((used)) static void
bxe_drain_tx_queues(struct bxe_softc *sc)
{
    struct bxe_fastpath *fp;
    int i, count;


    for (i = 0; i < sc->num_queues; i++) {
        fp = &sc->fp[i];

        count = 1000;

        while (bxe_has_tx_work(fp)) {

            BXE_FP_TX_LOCK(fp);
            bxe_txeof(sc, fp);
            BXE_FP_TX_UNLOCK(fp);

            if (count == 0) {
                BLOGE(sc, "Timeout waiting for fp[%d] "
                          "transmits to complete!\n", i);
                bxe_panic(sc, ("tx drain failure\n"));
                return;
            }

            count--;
            DELAY(1000);
            rmb();
        }
    }

    return;
}

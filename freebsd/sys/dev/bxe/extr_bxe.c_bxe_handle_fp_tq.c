
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct bxe_softc {int ifp; } ;
struct bxe_fastpath {int fp_hc_idx; int igu_sb_id; int tq_task; int tq; int index; struct bxe_softc* sc; } ;


 int BLOGD (struct bxe_softc*,int ,char*,int ) ;
 int BXE_FP_TX_LOCK (struct bxe_fastpath*) ;
 int BXE_FP_TX_UNLOCK (struct bxe_fastpath*) ;
 int DBG_INTR ;
 scalar_t__ FALSE ;
 int IFF_DRV_RUNNING ;
 int IGU_INT_ENABLE ;
 int USTORM_ID ;
 int bxe_ack_sb (struct bxe_softc*,int ,int ,int ,int ,int) ;
 scalar_t__ bxe_has_rx_work (struct bxe_fastpath*) ;
 scalar_t__ bxe_has_tx_work (struct bxe_fastpath*) ;
 scalar_t__ bxe_rxeof (struct bxe_softc*,struct bxe_fastpath*) ;
 scalar_t__ bxe_txeof (struct bxe_softc*,struct bxe_fastpath*) ;
 int bxe_update_fp_sb_idx (struct bxe_fastpath*) ;
 int if_getdrvflags (int ) ;
 int le16toh (int ) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static void
bxe_handle_fp_tq(void *context,
                 int pending)
{
    struct bxe_fastpath *fp = (struct bxe_fastpath *)context;
    struct bxe_softc *sc = fp->sc;
    uint8_t more_tx = FALSE;
    uint8_t more_rx = FALSE;

    BLOGD(sc, DBG_INTR, "---> FP TASK QUEUE (%d) <---\n", fp->index);
    bxe_update_fp_sb_idx(fp);



    if (bxe_has_tx_work(fp)) {
        BXE_FP_TX_LOCK(fp);
        more_tx = bxe_txeof(sc, fp);
        BXE_FP_TX_UNLOCK(fp);
    }

    if (bxe_has_rx_work(fp)) {
        more_rx = bxe_rxeof(sc, fp);
    }

    if (more_rx ) {

        taskqueue_enqueue(fp->tq, &fp->tq_task);
        return;
    }

    bxe_ack_sb(sc, fp->igu_sb_id, USTORM_ID,
               le16toh(fp->fp_hc_idx), IGU_INT_ENABLE, 1);
}

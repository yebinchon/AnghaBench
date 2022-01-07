
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bxe_softc {int sp_err_timeout_task; } ;
struct bxe_fastpath {scalar_t__ watchdog_timer; int index; } ;


 int BLOGE (struct bxe_softc*,char*,int ) ;
 int BXE_ERR_TXQ_STUCK ;
 int BXE_FP_TX_LOCK (struct bxe_fastpath*) ;
 int BXE_FP_TX_UNLOCK (struct bxe_fastpath*) ;
 int BXE_SET_ERROR_BIT (struct bxe_softc*,int ) ;
 int hz ;
 int taskqueue_enqueue_timeout (int ,int *,int) ;
 int taskqueue_thread ;

__attribute__((used)) static int
bxe_watchdog(struct bxe_softc *sc,
             struct bxe_fastpath *fp)
{
    BXE_FP_TX_LOCK(fp);

    if ((fp->watchdog_timer == 0) || (--fp->watchdog_timer)) {
        BXE_FP_TX_UNLOCK(fp);
        return (0);
    }

    BLOGE(sc, "TX watchdog timeout on fp[%02d], resetting!\n", fp->index);

    BXE_FP_TX_UNLOCK(fp);
    BXE_SET_ERROR_BIT(sc, BXE_ERR_TXQ_STUCK);
    taskqueue_enqueue_timeout(taskqueue_thread,
        &sc->sp_err_timeout_task, hz/10);

    return (-1);
}

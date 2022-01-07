
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bxe_softc {int sp_tq_task; int sp_tq; int igu_dsb_id; } ;


 int BLOGD (struct bxe_softc*,int,char*) ;
 int DBG_INTR ;
 int DBG_SP ;
 int IGU_INT_DISABLE ;
 int USTORM_ID ;
 int bxe_ack_sb (struct bxe_softc*,int ,int ,int ,int ,int ) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static void
bxe_intr_sp(void *xsc)
{
    struct bxe_softc *sc = (struct bxe_softc *)xsc;

    BLOGD(sc, (DBG_INTR | DBG_SP), "---> SP INTR <---\n");


    bxe_ack_sb(sc, sc->igu_dsb_id, USTORM_ID, 0, IGU_INT_DISABLE, 0);


    taskqueue_enqueue(sc->sp_tq, &sc->sp_tq_task);
}

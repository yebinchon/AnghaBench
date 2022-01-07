
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amr_softc {int amr_list_lock; } ;
struct amr_command {int ac_status; struct amr_softc* ac_sc; } ;
typedef int ac_qhead_t ;


 int AMR_STATUS_ABORTED ;
 int MA_OWNED ;
 int amr_complete (struct amr_softc*,int *) ;
 int amr_enqueue_completed (struct amr_command*,int *) ;
 int amr_init_qhead (int *) ;
 int mtx_assert (int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
amr_abort_load(struct amr_command *ac)
{
    ac_qhead_t head;
    struct amr_softc *sc = ac->ac_sc;

    mtx_assert(&sc->amr_list_lock, MA_OWNED);

    ac->ac_status = AMR_STATUS_ABORTED;
    amr_init_qhead(&head);
    amr_enqueue_completed(ac, &head);

    mtx_unlock(&sc->amr_list_lock);
    amr_complete(sc, &head);
    mtx_lock(&sc->amr_list_lock);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amr_softc {int ac_flags; int amr_list_lock; int amr_state; int amr_busyslots; int (* ac_complete ) (struct amr_softc*) ;} ;
struct amr_command {int ac_flags; int amr_list_lock; int amr_state; int amr_busyslots; int (* ac_complete ) (struct amr_softc*) ;} ;
typedef int ac_qhead_t ;


 int AMR_CMD_BUSY ;
 int AMR_CMD_SLEEP ;
 int AMR_STATE_QUEUE_FRZN ;
 struct amr_softc* amr_dequeue_completed (struct amr_softc*,int *) ;
 int amr_startio (struct amr_softc*) ;
 int amr_unmapcmd (struct amr_softc*) ;
 int debug_called (int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int stub1 (struct amr_softc*) ;
 int wakeup (struct amr_softc*) ;

__attribute__((used)) static void
amr_complete(void *context, ac_qhead_t *head)
{
    struct amr_softc *sc = (struct amr_softc *)context;
    struct amr_command *ac;

    debug_called(3);


    for (;;) {
 ac = amr_dequeue_completed(sc, head);
 if (ac == ((void*)0))
     break;


 amr_unmapcmd(ac);




 if (ac->ac_complete != ((void*)0)) {

     ac->ac_flags &= ~AMR_CMD_BUSY;
     ac->ac_complete(ac);




 } else {
     mtx_lock(&sc->amr_list_lock);
     ac->ac_flags &= ~AMR_CMD_BUSY;
     if (ac->ac_flags & AMR_CMD_SLEEP) {

  wakeup(ac);
     }
     mtx_unlock(&sc->amr_list_lock);
 }

 if(!sc->amr_busyslots) {
     wakeup(sc);
 }
    }

    mtx_lock(&sc->amr_list_lock);
    sc->amr_state &= ~AMR_STATE_QUEUE_FRZN;
    amr_startio(sc);
    mtx_unlock(&sc->amr_list_lock);
}

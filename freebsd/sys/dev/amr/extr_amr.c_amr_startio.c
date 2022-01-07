
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amr_softc {int amr_state; int (* amr_cam_command ) (struct amr_softc*,struct amr_command**) ;} ;
struct amr_command {int dummy; } ;


 int AMR_STATE_QUEUE_FRZN ;
 int amr_bio_command (struct amr_softc*,struct amr_command**) ;
 struct amr_command* amr_dequeue_ready (struct amr_softc*) ;
 int amr_requeue_ready (struct amr_command*) ;
 scalar_t__ amr_start (struct amr_command*) ;
 int debug (int,char*) ;
 int stub1 (struct amr_softc*,struct amr_command**) ;

void
amr_startio(struct amr_softc *sc)
{
    struct amr_command *ac;


    for (;;) {


 if (sc->amr_state & AMR_STATE_QUEUE_FRZN)
     break;


 ac = amr_dequeue_ready(sc);


 if (ac == ((void*)0))
     (void)amr_bio_command(sc, &ac);


 if ((ac == ((void*)0)) && (sc->amr_cam_command != ((void*)0)))
     sc->amr_cam_command(sc, &ac);


 if (ac == ((void*)0))
     break;


 if (amr_start(ac)) {
     debug(2, "controller busy, command deferred");
     amr_requeue_ready(ac);
     break;
 }
    }
}

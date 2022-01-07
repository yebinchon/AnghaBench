
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amr_softc {int amr_dev; struct amr_command** amr_busycmd; scalar_t__ (* amr_get_work ) (struct amr_softc*,struct amr_mailbox*) ;} ;
struct amr_mailbox {int mb_nstatus; int* mb_completed; int mb_status; } ;
struct amr_command {int ac_status; } ;
typedef int ac_qhead_t ;


 int amr_complete (struct amr_softc*,int *) ;
 int amr_enqueue_completed (struct amr_command*,int *) ;
 int amr_freeslot (struct amr_command*) ;
 int amr_init_qhead (int *) ;
 int debug (int,char*,int ) ;
 int debug_called (int) ;
 int device_printf (int ,char*,int) ;
 scalar_t__ stub1 (struct amr_softc*,struct amr_mailbox*) ;

int
amr_done(struct amr_softc *sc)
{
    ac_qhead_t head;
    struct amr_command *ac;
    struct amr_mailbox mbox;
    int i, idx, result;

    debug_called(3);


    result = 0;
    amr_init_qhead(&head);


    for (;;) {

 if (sc->amr_get_work(sc, &mbox)) {
     result = 1;


     for (i = 0; i < mbox.mb_nstatus; i++) {

  idx = mbox.mb_completed[i] - 1;
  ac = sc->amr_busycmd[idx];


  if (ac != ((void*)0)) {


      amr_freeslot(ac);


      ac->ac_status = mbox.mb_status;
      amr_enqueue_completed(ac, &head);
      debug(3, "completed command with status %x", mbox.mb_status);
  } else {
      device_printf(sc->amr_dev, "bad slot %d completed\n", idx);
  }
     }
 } else
     break;
    }


    amr_complete(sc, &head);

    return(result);
}

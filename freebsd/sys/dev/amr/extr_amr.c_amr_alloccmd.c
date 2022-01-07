
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amr_softc {int amr_state; } ;
struct amr_mailbox {int dummy; } ;
struct amr_command {int * ac_datamap; int * ac_tag; scalar_t__ ac_retries; int * ac_complete; int * ac_data; int * ac_bio; scalar_t__ ac_flags; int ac_mailbox; scalar_t__ ac_status; } ;


 int AMR_STATE_QUEUE_FRZN ;
 struct amr_command* amr_dequeue_free (struct amr_softc*) ;
 int bzero (int *,int) ;
 int debug_called (int) ;

struct amr_command *
amr_alloccmd(struct amr_softc *sc)
{
    struct amr_command *ac;

    debug_called(3);

    ac = amr_dequeue_free(sc);
    if (ac == ((void*)0)) {
 sc->amr_state |= AMR_STATE_QUEUE_FRZN;
 return(((void*)0));
    }


    ac->ac_status = 0;
    bzero(&ac->ac_mailbox, sizeof(struct amr_mailbox));
    ac->ac_flags = 0;
    ac->ac_bio = ((void*)0);
    ac->ac_data = ((void*)0);
    ac->ac_complete = ((void*)0);
    ac->ac_retries = 0;
    ac->ac_tag = ((void*)0);
    ac->ac_datamap = ((void*)0);
    return(ac);
}

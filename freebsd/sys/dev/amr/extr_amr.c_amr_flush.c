
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amr_softc {int amr_list_lock; scalar_t__ (* amr_poll_command ) (struct amr_command*) ;} ;
struct TYPE_2__ {int mb_command; } ;
struct amr_command {int ac_flags; int ac_status; TYPE_1__ ac_mailbox; } ;


 int AMR_CMD_DATAOUT ;
 int AMR_CMD_FLUSH ;
 int AMR_CMD_PRIORITY ;
 struct amr_command* amr_alloccmd (struct amr_softc*) ;
 int amr_releasecmd (struct amr_command*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ stub1 (struct amr_command*) ;

int
amr_flush(struct amr_softc *sc)
{
    struct amr_command *ac;
    int error;


    error = 1;
    mtx_lock(&sc->amr_list_lock);
    ac = amr_alloccmd(sc);
    mtx_unlock(&sc->amr_list_lock);
    if (ac == ((void*)0))
 goto out;

    ac->ac_flags |= AMR_CMD_PRIORITY | AMR_CMD_DATAOUT;


    ac->ac_mailbox.mb_command = AMR_CMD_FLUSH;


    if (sc->amr_poll_command(ac))
 goto out;
    error = ac->ac_status;

 out:
    mtx_lock(&sc->amr_list_lock);
    if (ac != ((void*)0))
 amr_releasecmd(ac);
    mtx_unlock(&sc->amr_list_lock);
    return(error);
}

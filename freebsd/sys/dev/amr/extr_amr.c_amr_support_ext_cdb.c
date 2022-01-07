
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct amr_softc {int amr_list_lock; scalar_t__ (* amr_poll_command ) (struct amr_command*) ;} ;
struct amr_command {int ac_flags; scalar_t__ ac_status; int ac_mailbox; } ;


 int AMR_CMD_DATAOUT ;
 int AMR_CMD_PRIORITY ;
 scalar_t__ AMR_STATUS_SUCCESS ;
 struct amr_command* amr_alloccmd (struct amr_softc*) ;
 int amr_releasecmd (struct amr_command*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ stub1 (struct amr_command*) ;

__attribute__((used)) static int
amr_support_ext_cdb(struct amr_softc *sc)
{
    struct amr_command *ac;
    u_int8_t *mbox;
    int error;


    error = 0;
    mtx_lock(&sc->amr_list_lock);
    ac = amr_alloccmd(sc);
    mtx_unlock(&sc->amr_list_lock);
    if (ac == ((void*)0))
 goto out;

    ac->ac_flags |= AMR_CMD_PRIORITY | AMR_CMD_DATAOUT;


    mbox = (u_int8_t *)&ac->ac_mailbox;
    mbox[0] = 0xA4;
    mbox[2] = 0x16;



    if (sc->amr_poll_command(ac))
 goto out;
    if( ac->ac_status == AMR_STATUS_SUCCESS ) {
     error = 1;
    }

out:
    mtx_lock(&sc->amr_list_lock);
    if (ac != ((void*)0))
 amr_releasecmd(ac);
    mtx_unlock(&sc->amr_list_lock);
    return(error);
}

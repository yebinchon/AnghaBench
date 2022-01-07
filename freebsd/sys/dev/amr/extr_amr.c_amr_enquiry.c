
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct amr_softc {int amr_list_lock; scalar_t__ (* amr_poll_command ) (struct amr_command*) ;} ;
struct amr_command {int ac_flags; size_t ac_length; int ac_status; int ac_mailbox; void* ac_data; } ;


 int AMR_CMD_DATAIN ;
 int AMR_CMD_PRIORITY ;
 int M_AMR ;
 int M_NOWAIT ;
 int M_ZERO ;
 struct amr_command* amr_alloccmd (struct amr_softc*) ;
 int amr_releasecmd (struct amr_command*) ;
 int debug_called (int) ;
 int free (void*,int ) ;
 void* malloc (size_t,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ stub1 (struct amr_command*) ;

__attribute__((used)) static void *
amr_enquiry(struct amr_softc *sc, size_t bufsize, u_int8_t cmd, u_int8_t cmdsub, u_int8_t cmdqual, int *status)
{
    struct amr_command *ac;
    void *result;
    u_int8_t *mbox;
    int error;

    debug_called(1);

    error = 1;
    result = ((void*)0);


    mtx_lock(&sc->amr_list_lock);
    ac = amr_alloccmd(sc);
    mtx_unlock(&sc->amr_list_lock);
    if (ac == ((void*)0))
 goto out;

    if ((result = malloc(bufsize, M_AMR, M_ZERO|M_NOWAIT)) == ((void*)0))
 goto out;


    ac->ac_flags |= AMR_CMD_PRIORITY | AMR_CMD_DATAIN;


    ac->ac_data = result;
    ac->ac_length = bufsize;


    mbox = (u_int8_t *)&ac->ac_mailbox;
    mbox[0] = cmd;
    mbox[2] = cmdsub;
    mbox[3] = cmdqual;
    *status = 0;


    if (sc->amr_poll_command(ac))
 goto out;
    error = ac->ac_status;
    *status = ac->ac_status;

 out:
    mtx_lock(&sc->amr_list_lock);
    if (ac != ((void*)0))
 amr_releasecmd(ac);
    mtx_unlock(&sc->amr_list_lock);
    if ((error != 0) && (result != ((void*)0))) {
 free(result, M_AMR);
 result = ((void*)0);
    }
    return(result);
}

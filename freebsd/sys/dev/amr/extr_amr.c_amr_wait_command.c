
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amr_softc {int amr_list_lock; } ;
struct amr_command {int ac_flags; int * ac_complete; struct amr_softc* ac_sc; } ;


 int AMR_CMD_BUSY ;
 int AMR_CMD_SLEEP ;
 int EWOULDBLOCK ;
 int PRIBIO ;
 int amr_start (struct amr_command*) ;
 int debug_called (int) ;
 int msleep (struct amr_command*,int *,int ,char*,int ) ;

__attribute__((used)) static int
amr_wait_command(struct amr_command *ac)
{
    int error = 0;
    struct amr_softc *sc = ac->ac_sc;

    debug_called(1);

    ac->ac_complete = ((void*)0);
    ac->ac_flags |= AMR_CMD_SLEEP;
    if ((error = amr_start(ac)) != 0) {
 return(error);
    }

    while ((ac->ac_flags & AMR_CMD_BUSY) && (error != EWOULDBLOCK)) {
 error = msleep(ac,&sc->amr_list_lock, PRIBIO, "amrwcmd", 0);
    }

    return(error);
}

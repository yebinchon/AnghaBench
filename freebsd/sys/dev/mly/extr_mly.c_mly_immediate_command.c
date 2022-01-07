
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mly_softc {int mly_state; int mly_lock; } ;
struct mly_command {int mc_flags; struct mly_softc* mc_sc; } ;


 int MLY_ASSERT_LOCKED (struct mly_softc*) ;
 int MLY_CMD_COMPLETE ;
 int MLY_STATE_INTERRUPTS_ON ;
 int PRIBIO ;
 int debug_called (int) ;
 int mly_done (struct mly_softc*) ;
 int mly_start (struct mly_command*) ;
 int mtx_sleep (struct mly_command*,int *,int ,char*,int ) ;

__attribute__((used)) static int
mly_immediate_command(struct mly_command *mc)
{
    struct mly_softc *sc = mc->mc_sc;
    int error;

    debug_called(1);

    MLY_ASSERT_LOCKED(sc);
    if ((error = mly_start(mc))) {
 return(error);
    }

    if (sc->mly_state & MLY_STATE_INTERRUPTS_ON) {

 while(!(mc->mc_flags & MLY_CMD_COMPLETE)) {
     mtx_sleep(mc, &sc->mly_lock, PRIBIO, "mlywait", 0);
 }
    } else {

 while(!(mc->mc_flags & MLY_CMD_COMPLETE)) {
     mly_done(mc->mc_sc);
 }
    }
    return(0);
}

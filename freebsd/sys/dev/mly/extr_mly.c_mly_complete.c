
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mly_softc {int dummy; } ;
struct mly_command {void (* mc_complete ) (struct mly_command*) ;int mc_flags; } ;


 int MLY_CMD_COMPLETE ;
 int debug_called (int) ;
 struct mly_command* mly_dequeue_complete (struct mly_softc*) ;
 int mly_unmap_command (struct mly_command*) ;
 int wakeup (struct mly_command*) ;

__attribute__((used)) static void
mly_complete(struct mly_softc *sc)
{
    struct mly_command *mc;
    void (* mc_complete)(struct mly_command *mc);

    debug_called(2);




    while ((mc = mly_dequeue_complete(sc)) != ((void*)0)) {
 mly_unmap_command(mc);
 mc_complete = mc->mc_complete;
 mc->mc_flags |= MLY_CMD_COMPLETE;




 if (mc_complete != ((void*)0)) {
     mc_complete(mc);
 } else {
     wakeup(mc);
 }
    }





}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct thread {int dummy; } ;
struct cdev {TYPE_1__* si_drv2; } ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ isc_session_t ;


 int ISC_FFPHASE ;
 int PRIBIO ;
 int debug (int,char*,...) ;
 int debug_called (int) ;
 scalar_t__ dev2unit (struct cdev*) ;
 int hz ;
 int ism_stop (TYPE_1__*) ;
 scalar_t__ max_sessions ;
 int sdebug (int,char*,int) ;
 int tsleep (TYPE_1__*,int ,char*,int) ;

__attribute__((used)) static int
iscsi_close(struct cdev *dev, int flag, int otyp, struct thread *td)
{
     isc_session_t *sp;

     debug_called(8);

     debug(3, "session=%d flag=%x", dev2unit(dev), flag);

     if(dev2unit(dev) == max_sessions) {
   return 0;
     }
     sp = dev->si_drv2;
     if(sp != ((void*)0)) {
   sdebug(3, "sp->flags=%x", sp->flags );
   if(sp->flags & ISC_FFPHASE)

        tsleep(sp, PRIBIO, "isc-cls", 60*hz);
   ism_stop(sp);
     }
     debug(2, "done");
     return 0;
}

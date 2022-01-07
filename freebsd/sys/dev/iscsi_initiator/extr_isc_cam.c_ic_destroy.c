
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cam_sim; int * cam_path; } ;
typedef TYPE_1__ isc_session_t ;


 int AC_LOST_DEVICE ;
 int CAM_LOCK (TYPE_1__*) ;
 int CAM_UNLOCK (TYPE_1__*) ;
 int TRUE ;
 int XPT_RESET_BUS ;
 int cam_sim_free (int ,int ) ;
 int cam_sim_name (int ) ;
 int cam_sim_path (int ) ;
 int cam_sim_unit (int ) ;
 int debug_called (int) ;
 int sdebug (int,char*,...) ;
 int xpt_async (int ,int *,int *) ;
 int xpt_bus_deregister (int ) ;
 int xpt_free_path (int *) ;

void
ic_destroy(isc_session_t *sp )
{
     debug_called(8);

     if(sp->cam_path != ((void*)0)) {
   sdebug(2, "name=%s unit=%d",
   cam_sim_name(sp->cam_sim), cam_sim_unit(sp->cam_sim));
   CAM_LOCK(sp);



   xpt_async(XPT_RESET_BUS, sp->cam_path, ((void*)0));

   xpt_free_path(sp->cam_path);
   xpt_bus_deregister(cam_sim_path(sp->cam_sim));
   cam_sim_free(sp->cam_sim, TRUE );

   CAM_UNLOCK(sp);
   sdebug(2, "done");
     }
}

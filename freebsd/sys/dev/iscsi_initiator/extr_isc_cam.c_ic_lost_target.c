
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * cam_path; int cam_mtx; } ;
typedef TYPE_1__ isc_session_t ;


 int AC_LOST_DEVICE ;
 int debug_called (int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sdebug (int,char*,int) ;
 int xpt_async (int ,int *,int *) ;
 int xpt_free_path (int *) ;

void
ic_lost_target(isc_session_t *sp, int target)
{
     debug_called(8);
     sdebug(2, "lost target=%d", target);

     if(sp->cam_path != ((void*)0)) {
   mtx_lock(&sp->cam_mtx);
   xpt_async(AC_LOST_DEVICE, sp->cam_path, ((void*)0));
   xpt_free_path(sp->cam_path);
   mtx_unlock(&sp->cam_mtx);
   sp->cam_path = 0;
     }
}

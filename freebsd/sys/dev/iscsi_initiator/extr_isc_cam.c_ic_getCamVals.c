
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int target_nluns; scalar_t__ target_id; int path_id; } ;
typedef TYPE_1__ iscsi_cam_t ;
struct TYPE_6__ {scalar_t__ cam_sim; } ;
typedef TYPE_2__ isc_session_t ;


 int ENXIO ;
 int ISCSI_MAX_LUNS ;
 int cam_sim_path (scalar_t__) ;
 int debug_called (int) ;

int
ic_getCamVals(isc_session_t *sp, iscsi_cam_t *cp)
{
     debug_called(8);

     if(sp && sp->cam_sim) {
   cp->path_id = cam_sim_path(sp->cam_sim);
   cp->target_id = 0;
   cp->target_nluns = ISCSI_MAX_LUNS;
   return 0;
     }
     return ENXIO;
}

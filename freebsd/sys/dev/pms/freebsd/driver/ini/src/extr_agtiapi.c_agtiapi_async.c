
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_3__ {size_t target_id; } ;
struct ccb_getdev {TYPE_1__ ccb_h; } ;
struct cam_path {int dummy; } ;
struct agtiapi_softc {TYPE_2__* pDevList; } ;
struct TYPE_4__ {int qdepth; } ;
typedef TYPE_2__ ag_device_t ;
typedef size_t U32 ;



 size_t INDEX (struct agtiapi_softc*,size_t) ;
 int agtiapi_adjust_queue_depth (struct cam_path*,int ) ;
 size_t maxTargets ;

__attribute__((used)) static void
agtiapi_async(void *callback_arg, u_int32_t code,
        struct cam_path *path, void *arg)
{
 struct agtiapi_softc *pmsc;
 U32 TID;
 ag_device_t *targ;
 pmsc = (struct agtiapi_softc*)callback_arg;
 switch (code) {
 case 128:
 {
     struct ccb_getdev *cgd;
     cgd = (struct ccb_getdev *)arg;
     if (cgd == ((void*)0)) {
  break;
     }
     TID = cgd->ccb_h.target_id;
     if (TID >= 0 && TID < maxTargets){
                if (pmsc != ((void*)0)){
                    TID = INDEX(pmsc, TID);
                    targ = &pmsc->pDevList[TID];
             agtiapi_adjust_queue_depth(path, targ->qdepth);
                }
     }
     break;
        }
 default:
  break;
 }
}

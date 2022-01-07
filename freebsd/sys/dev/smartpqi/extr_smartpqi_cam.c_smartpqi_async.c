
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int u_int32_t ;
struct pqisrc_softstate {TYPE_2__*** device_list; } ;
struct TYPE_3__ {size_t target_id; size_t target_lun; } ;
struct ccb_getdev {TYPE_1__ ccb_h; } ;
struct cam_path {int dummy; } ;
struct TYPE_4__ {int queue_depth; } ;
typedef TYPE_2__ pqi_scsi_dev_t ;



 int DBG_FUNC (char*) ;
 int PQI_CTLR_INDEX ;
 int smartpqi_adjust_queue_depth (struct cam_path*,int ) ;

__attribute__((used)) static void
smartpqi_async(void *callback_arg, u_int32_t code,
  struct cam_path *path, void *arg)
{
 struct pqisrc_softstate *softs;
 softs = (struct pqisrc_softstate*)callback_arg;

 DBG_FUNC("IN\n");

 switch (code) {
  case 128:
  {
   struct ccb_getdev *cgd;
   cgd = (struct ccb_getdev *)arg;
   if (cgd == ((void*)0)) {
    break;
   }
   uint32_t t_id = cgd->ccb_h.target_id;

   if (t_id <= (PQI_CTLR_INDEX - 1)) {
    if (softs != ((void*)0)) {
     pqi_scsi_dev_t *dvp = softs->device_list[t_id][cgd->ccb_h.target_lun];
     smartpqi_adjust_queue_depth(path,
       dvp->queue_depth);
    }
   }
   break;
  }
  default:
   break;
 }

 DBG_FUNC("OUT\n");
}

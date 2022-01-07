
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int status; } ;
struct ccb_calc_geometry {long volume_size; long block_size; int heads; int secs_per_track; int cylinders; TYPE_1__ ccb_h; } ;


 int CAM_REQ_CMP ;
 int cam_calc_geometry (struct ccb_calc_geometry*,int) ;

void
aic_calc_geometry(struct ccb_calc_geometry *ccg, int extended)
{



 uint32_t size_mb;
 uint32_t secs_per_cylinder;

 size_mb = ccg->volume_size / ((1024L * 1024L) / ccg->block_size);
 if (size_mb > 1024 && extended) {
  ccg->heads = 255;
  ccg->secs_per_track = 63;
 } else {
  ccg->heads = 64;
  ccg->secs_per_track = 32;
 }
 secs_per_cylinder = ccg->heads * ccg->secs_per_track;
 ccg->cylinders = ccg->volume_size / secs_per_cylinder;
 ccg->ccb_h.status = CAM_REQ_CMP;

}

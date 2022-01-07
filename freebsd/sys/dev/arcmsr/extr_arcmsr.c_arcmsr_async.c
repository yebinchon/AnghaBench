
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int32_t ;
struct cam_sim {int dummy; } ;
struct cam_path {int dummy; } ;
struct AdapterControlBlock {int dummy; } ;



 int ARCMSR_MAX_TARGETID ;
 int ARCMSR_MAX_TARGETLUN ;
 scalar_t__ cam_sim_softc (struct cam_sim*) ;
 int xpt_path_lun_id (struct cam_path*) ;
 int xpt_path_target_id (struct cam_path*) ;

__attribute__((used)) static void arcmsr_async(void *cb_arg, u_int32_t code, struct cam_path *path, void *arg)
{
 struct AdapterControlBlock *acb;
 u_int8_t target_id, target_lun;
 struct cam_sim *sim;

 sim = (struct cam_sim *) cb_arg;
 acb =(struct AdapterControlBlock *) cam_sim_softc(sim);
 switch (code) {
 case 128:
  target_id = xpt_path_target_id(path);
  target_lun = xpt_path_lun_id(path);
  if((target_id > ARCMSR_MAX_TARGETID) || (target_lun > ARCMSR_MAX_TARGETLUN)) {
   break;
  }

  break;
 default:
  break;
 }
}

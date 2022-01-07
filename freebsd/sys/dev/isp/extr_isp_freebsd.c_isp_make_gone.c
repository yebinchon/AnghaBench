
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_fc {int sim; } ;
struct cam_path {int dummy; } ;
typedef int ispsoftc_t ;
typedef int fcportdb_t ;


 int AC_LOST_DEVICE ;
 int CAM_LUN_WILDCARD ;
 scalar_t__ CAM_REQ_CMP ;
 struct isp_fc* ISP_FC_PC (int *,int) ;
 int cam_sim_path (int ) ;
 int xpt_async (int ,struct cam_path*,int *) ;
 scalar_t__ xpt_create_path (struct cam_path**,int *,int ,int,int ) ;
 int xpt_free_path (struct cam_path*) ;

__attribute__((used)) static void
isp_make_gone(ispsoftc_t *isp, fcportdb_t *fcp, int chan, int tgt)
{
 struct cam_path *tp;
 struct isp_fc *fc = ISP_FC_PC(isp, chan);

 if (xpt_create_path(&tp, ((void*)0), cam_sim_path(fc->sim), tgt, CAM_LUN_WILDCARD) == CAM_REQ_CMP) {
  xpt_async(AC_LOST_DEVICE, tp, ((void*)0));
  xpt_free_path(tp);
 }
}

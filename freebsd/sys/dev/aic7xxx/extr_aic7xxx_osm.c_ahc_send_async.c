
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u_int ;
struct ccb_trans_settings_scsi {int valid; int flags; } ;
struct TYPE_4__ {void* target_lun; void* target_id; struct cam_path* path; } ;
struct TYPE_3__ {struct ccb_trans_settings_scsi scsi; } ;
struct ccb_trans_settings {TYPE_2__ ccb_h; TYPE_1__ proto_specific; int type; } ;
struct cam_path {int dummy; } ;
struct ahc_softc {int our_id_b; int our_id; } ;
typedef int ahc_queue_alg ;
typedef int ac_code ;





 int AHC_QUEUE_TAGGED ;
 int CAM_REQ_CMP ;
 int CTS_SCSI_FLAGS_TAG_ENB ;
 int CTS_SCSI_VALID_TQ ;
 int CTS_TYPE_CURRENT_SETTINGS ;
 int ahc_create_path (struct ahc_softc*,char,void*,void*,struct cam_path**) ;
 int ahc_get_tran_settings (struct ahc_softc*,int ,char,struct ccb_trans_settings*) ;
 int panic (char*) ;
 int xpt_async (int,struct cam_path*,void*) ;
 int xpt_free_path (struct cam_path*) ;

void
ahc_send_async(struct ahc_softc *ahc, char channel, u_int target,
  u_int lun, ac_code code, void *opt_arg)
{
 struct ccb_trans_settings cts;
 struct cam_path *path;
 void *arg;
 int error;

 arg = ((void*)0);
 error = ahc_create_path(ahc, channel, target, lun, &path);

 if (error != CAM_REQ_CMP)
  return;

 switch (code) {
 case 128:
 {
  struct ccb_trans_settings_scsi *scsi;

  cts.type = CTS_TYPE_CURRENT_SETTINGS;
  scsi = &cts.proto_specific.scsi;
  cts.ccb_h.path = path;
  cts.ccb_h.target_id = target;
  cts.ccb_h.target_lun = lun;
  ahc_get_tran_settings(ahc, channel == 'A' ? ahc->our_id
         : ahc->our_id_b,
          channel, &cts);
  arg = &cts;
  scsi->valid &= ~CTS_SCSI_VALID_TQ;
  scsi->flags &= ~CTS_SCSI_FLAGS_TAG_ENB;
  if (opt_arg == ((void*)0))
   break;
  if (*((ahc_queue_alg *)opt_arg) == AHC_QUEUE_TAGGED)
   scsi->flags |= ~CTS_SCSI_FLAGS_TAG_ENB;
  scsi->valid |= CTS_SCSI_VALID_TQ;
  break;
 }
 case 129:
 case 130:
  break;
 default:
  panic("ahc_send_async: Unexpected async event");
 }
 xpt_async(code, path, arg);
 xpt_free_path(path);
}

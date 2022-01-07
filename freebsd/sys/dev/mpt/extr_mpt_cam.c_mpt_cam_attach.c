
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int GlobalCredits; } ;
struct mpt_softc {int role; int * phydisk_sim; int phydisk_path; int dev; TYPE_2__* ioc_page2; int * sim; int path; TYPE_5__* tmf_req; scalar_t__ is_sas; int scsi_tgt_handler_id; scalar_t__ is_fc; scalar_t__ els_cmds_allocated; TYPE_1__ ioc_facts; int request_timeout_list; } ;
struct cam_devq {int dummy; } ;
struct TYPE_8__ {int reply_handler; } ;
typedef TYPE_3__ mpt_handler_t ;
struct TYPE_9__ {int state; } ;
struct TYPE_7__ {scalar_t__ MaxPhysDisks; } ;


 int CAM_LUN_WILDCARD ;
 scalar_t__ CAM_REQ_CMP ;
 scalar_t__ CAM_SUCCESS ;
 int CAM_TARGET_WILDCARD ;
 int ENOMEM ;
 scalar_t__ FALSE ;
 int MPT_HANDLER_REPLY ;
 int MPT_LOCK (struct mpt_softc*) ;
 int MPT_MAX_REQUESTS (struct mpt_softc*) ;
 int MPT_PRT_DEBUG ;
 int MPT_ROLE_TARGET ;
 int MPT_UNLOCK (struct mpt_softc*) ;
 int REQ_STATE_FREE ;
 int TAILQ_INIT (int *) ;
 int cam_sim_path (int *) ;
 struct cam_devq* cam_simq_alloc (int) ;
 int cam_simq_free (struct cam_devq*) ;
 int fc_els_handler_id ;
 int mpt_action ;
 scalar_t__ mpt_add_els_buffers (struct mpt_softc*) ;
 int mpt_cam_detach (struct mpt_softc*) ;
 int mpt_fc_els_reply_handler ;
 TYPE_5__* mpt_get_request (struct mpt_softc*,scalar_t__) ;
 int mpt_lprt (struct mpt_softc*,int ,char*) ;
 int mpt_poll ;
 int mpt_prt (struct mpt_softc*,char*) ;
 int mpt_register_handler (struct mpt_softc*,int ,TYPE_3__,int *) ;
 int mpt_sata_pass_reply_handler ;
 int mpt_scsi_reply_handler ;
 int mpt_scsi_tgt_reply_handler ;
 int mpt_scsi_tmf_reply_handler ;
 void* mpt_sim_alloc (int ,int ,char*,struct mpt_softc*,int,int,struct cam_devq*) ;
 scalar_t__ mpt_spawn_recovery_thread (struct mpt_softc*) ;
 int sata_pass_handler_id ;
 int scsi_io_handler_id ;
 int scsi_tmf_handler_id ;
 scalar_t__ xpt_bus_register (int *,int ,int) ;
 scalar_t__ xpt_create_path (int *,int *,int ,int ,int ) ;

__attribute__((used)) static int
mpt_cam_attach(struct mpt_softc *mpt)
{
 struct cam_devq *devq;
 mpt_handler_t handler;
 int maxq;
 int error;

 MPT_LOCK(mpt);
 TAILQ_INIT(&mpt->request_timeout_list);
 maxq = (mpt->ioc_facts.GlobalCredits < MPT_MAX_REQUESTS(mpt))?
     mpt->ioc_facts.GlobalCredits : MPT_MAX_REQUESTS(mpt);

 handler.reply_handler = mpt_scsi_reply_handler;
 error = mpt_register_handler(mpt, MPT_HANDLER_REPLY, handler,
         &scsi_io_handler_id);
 if (error != 0) {
  MPT_UNLOCK(mpt);
  goto cleanup;
 }

 handler.reply_handler = mpt_scsi_tmf_reply_handler;
 error = mpt_register_handler(mpt, MPT_HANDLER_REPLY, handler,
         &scsi_tmf_handler_id);
 if (error != 0) {
  MPT_UNLOCK(mpt);
  goto cleanup;
 }





 if (mpt->is_fc && (mpt->role & MPT_ROLE_TARGET) != 0) {
  handler.reply_handler = mpt_fc_els_reply_handler;
  error = mpt_register_handler(mpt, MPT_HANDLER_REPLY, handler,
      &fc_els_handler_id);
  if (error != 0) {
   MPT_UNLOCK(mpt);
   goto cleanup;
  }
  if (mpt_add_els_buffers(mpt) == FALSE) {
   error = ENOMEM;
   MPT_UNLOCK(mpt);
   goto cleanup;
  }
  maxq -= mpt->els_cmds_allocated;
 }






 if (mpt->is_fc && (mpt->role & MPT_ROLE_TARGET) != 0) {
  handler.reply_handler = mpt_scsi_tgt_reply_handler;
  error = mpt_register_handler(mpt, MPT_HANDLER_REPLY, handler,
      &mpt->scsi_tgt_handler_id);
  if (error != 0) {
   MPT_UNLOCK(mpt);
   goto cleanup;
  }
 }

 if (mpt->is_sas) {
  handler.reply_handler = mpt_sata_pass_reply_handler;
  error = mpt_register_handler(mpt, MPT_HANDLER_REPLY, handler,
      &sata_pass_handler_id);
  if (error != 0) {
   MPT_UNLOCK(mpt);
   goto cleanup;
  }
 }




 mpt->tmf_req = mpt_get_request(mpt, FALSE);
 if (mpt->tmf_req == ((void*)0)) {
  mpt_prt(mpt, "Unable to allocate dedicated TMF request!\n");
  error = ENOMEM;
  MPT_UNLOCK(mpt);
  goto cleanup;
 }







 mpt->tmf_req->state = REQ_STATE_FREE;
 maxq--;




 MPT_UNLOCK(mpt);

 if (mpt_spawn_recovery_thread(mpt) != 0) {
  mpt_prt(mpt, "Unable to spawn recovery thread!\n");
  error = ENOMEM;
  goto cleanup;
 }




 devq = cam_simq_alloc(maxq);
 if (devq == ((void*)0)) {
  mpt_prt(mpt, "Unable to allocate CAM SIMQ!\n");
  error = ENOMEM;
  goto cleanup;
 }




 mpt->sim =
     mpt_sim_alloc(mpt_action, mpt_poll, "mpt", mpt, 1, maxq, devq);
 if (mpt->sim == ((void*)0)) {
  mpt_prt(mpt, "Unable to allocate CAM SIM!\n");
  cam_simq_free(devq);
  error = ENOMEM;
  goto cleanup;
 }




 MPT_LOCK(mpt);
 if (xpt_bus_register(mpt->sim, mpt->dev, 0) != CAM_SUCCESS) {
  mpt_prt(mpt, "Bus registration Failed!\n");
  error = ENOMEM;
  MPT_UNLOCK(mpt);
  goto cleanup;
 }

 if (xpt_create_path(&mpt->path, ((void*)0), cam_sim_path(mpt->sim),
     CAM_TARGET_WILDCARD, CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
  mpt_prt(mpt, "Unable to allocate Path!\n");
  error = ENOMEM;
  MPT_UNLOCK(mpt);
  goto cleanup;
 }
 MPT_UNLOCK(mpt);





 if (mpt->ioc_page2 == ((void*)0) || mpt->ioc_page2->MaxPhysDisks == 0) {
  return (0);
 }




 mpt->phydisk_sim =
     mpt_sim_alloc(mpt_action, mpt_poll, "mpt", mpt, 1, maxq, devq);
 if (mpt->phydisk_sim == ((void*)0)) {
  mpt_prt(mpt, "Unable to allocate Physical Disk CAM SIM!\n");
  error = ENOMEM;
  goto cleanup;
 }




 MPT_LOCK(mpt);
 if (xpt_bus_register(mpt->phydisk_sim, mpt->dev, 1) !=
     CAM_SUCCESS) {
  mpt_prt(mpt, "Physical Disk Bus registration Failed!\n");
  error = ENOMEM;
  MPT_UNLOCK(mpt);
  goto cleanup;
 }

 if (xpt_create_path(&mpt->phydisk_path, ((void*)0),
     cam_sim_path(mpt->phydisk_sim),
     CAM_TARGET_WILDCARD, CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
  mpt_prt(mpt, "Unable to allocate Physical Disk Path!\n");
  error = ENOMEM;
  MPT_UNLOCK(mpt);
  goto cleanup;
 }
 MPT_UNLOCK(mpt);
 mpt_lprt(mpt, MPT_PRT_DEBUG, "attached cam\n");
 return (0);

cleanup:
 mpt_cam_detach(mpt);
 return (error);
}

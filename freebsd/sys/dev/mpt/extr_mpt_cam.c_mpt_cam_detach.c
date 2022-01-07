
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mpt_softc {int * phydisk_sim; int phydisk_path; int * sim; int path; int * sas_portinfo; TYPE_2__* tmf_req; int scsi_tgt_handler_id; scalar_t__ ready; } ;
struct TYPE_4__ {int reply_handler; } ;
typedef TYPE_1__ mpt_handler_t ;
struct TYPE_5__ {int state; } ;


 int MPT_HANDLER_REPLY ;
 int MPT_LOCK (struct mpt_softc*) ;
 int MPT_UNLOCK (struct mpt_softc*) ;
 int M_DEVBUF ;
 int REQ_STATE_ALLOCATED ;
 int TRUE ;
 int cam_sim_free (int *,int ) ;
 int cam_sim_path (int *) ;
 int fc_els_handler_id ;
 int free (int *,int ) ;
 int mpt_deregister_handler (struct mpt_softc*,int ,TYPE_1__,int ) ;
 int mpt_fc_els_reply_handler ;
 int mpt_free_request (struct mpt_softc*,TYPE_2__*) ;
 int mpt_sata_pass_reply_handler ;
 int mpt_scsi_reply_handler ;
 int mpt_scsi_tgt_reply_handler ;
 int mpt_scsi_tmf_reply_handler ;
 int mpt_terminate_recovery_thread (struct mpt_softc*) ;
 int sata_pass_handler_id ;
 int scsi_io_handler_id ;
 int scsi_tmf_handler_id ;
 int xpt_bus_deregister (int ) ;
 int xpt_free_path (int ) ;

__attribute__((used)) static void
mpt_cam_detach(struct mpt_softc *mpt)
{
 mpt_handler_t handler;

 MPT_LOCK(mpt);
 mpt->ready = 0;
 mpt_terminate_recovery_thread(mpt);

 handler.reply_handler = mpt_scsi_reply_handler;
 mpt_deregister_handler(mpt, MPT_HANDLER_REPLY, handler,
          scsi_io_handler_id);
 handler.reply_handler = mpt_scsi_tmf_reply_handler;
 mpt_deregister_handler(mpt, MPT_HANDLER_REPLY, handler,
          scsi_tmf_handler_id);
 handler.reply_handler = mpt_fc_els_reply_handler;
 mpt_deregister_handler(mpt, MPT_HANDLER_REPLY, handler,
          fc_els_handler_id);
 handler.reply_handler = mpt_scsi_tgt_reply_handler;
 mpt_deregister_handler(mpt, MPT_HANDLER_REPLY, handler,
          mpt->scsi_tgt_handler_id);
 handler.reply_handler = mpt_sata_pass_reply_handler;
 mpt_deregister_handler(mpt, MPT_HANDLER_REPLY, handler,
          sata_pass_handler_id);

 if (mpt->tmf_req != ((void*)0)) {
  mpt->tmf_req->state = REQ_STATE_ALLOCATED;
  mpt_free_request(mpt, mpt->tmf_req);
  mpt->tmf_req = ((void*)0);
 }
 if (mpt->sas_portinfo != ((void*)0)) {
  free(mpt->sas_portinfo, M_DEVBUF);
  mpt->sas_portinfo = ((void*)0);
 }

 if (mpt->sim != ((void*)0)) {
  xpt_free_path(mpt->path);
  xpt_bus_deregister(cam_sim_path(mpt->sim));
  cam_sim_free(mpt->sim, TRUE);
  mpt->sim = ((void*)0);
 }

 if (mpt->phydisk_sim != ((void*)0)) {
  xpt_free_path(mpt->phydisk_path);
  xpt_bus_deregister(cam_sim_path(mpt->phydisk_sim));
  cam_sim_free(mpt->phydisk_sim, TRUE);
  mpt->phydisk_sim = ((void*)0);
 }
 MPT_UNLOCK(mpt);
}

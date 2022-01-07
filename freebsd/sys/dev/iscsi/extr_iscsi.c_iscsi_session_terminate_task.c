
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iscsi_session {int dummy; } ;
struct iscsi_outstanding {TYPE_2__* io_ccb; } ;
typedef int cam_status ;
struct TYPE_3__ {int status; int path; } ;
struct TYPE_4__ {TYPE_1__ ccb_h; } ;


 int CAM_DEV_QFRZN ;
 int CAM_SIM_QUEUED ;
 int CAM_STATUS_MASK ;
 int ISCSI_SESSION_DEBUG (struct iscsi_session*,char*) ;
 int ISCSI_SESSION_LOCK_ASSERT (struct iscsi_session*) ;
 int iscsi_outstanding_remove (struct iscsi_session*,struct iscsi_outstanding*) ;
 int xpt_done (TYPE_2__*) ;
 int xpt_freeze_devq (int ,int) ;

__attribute__((used)) static void
iscsi_session_terminate_task(struct iscsi_session *is,
    struct iscsi_outstanding *io, cam_status status)
{

 ISCSI_SESSION_LOCK_ASSERT(is);

 if (io->io_ccb != ((void*)0)) {
  io->io_ccb->ccb_h.status &= ~(CAM_SIM_QUEUED | CAM_STATUS_MASK);
  io->io_ccb->ccb_h.status |= status;
  if ((io->io_ccb->ccb_h.status & CAM_DEV_QFRZN) == 0) {
   io->io_ccb->ccb_h.status |= CAM_DEV_QFRZN;
   xpt_freeze_devq(io->io_ccb->ccb_h.path, 1);
   ISCSI_SESSION_DEBUG(is, "freezing devq");
  }
  xpt_done(io->io_ccb);
 }
 iscsi_outstanding_remove(is, io);
}

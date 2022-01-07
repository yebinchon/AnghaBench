
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int inots; int atios; } ;
struct mpt_softc {int failure_id; int scsi_tgt_handler_id; TYPE_2__ trt_wildcard; TYPE_1__* trt; int request_timeout_list; int request_free_list; int request_pending_list; int ack_frames; } ;
struct TYPE_3__ {int inots; int atios; } ;


 int LIST_INIT (int *) ;
 int MPT_HANDLER_ID_NONE ;
 int MPT_LOCK (struct mpt_softc*) ;
 int MPT_MAX_LUNS ;
 int MPT_OFFSET_DOORBELL ;
 int MPT_PRT_DEBUG ;
 int MPT_UNLOCK (struct mpt_softc*) ;
 int STAILQ_INIT (int *) ;
 int TAILQ_INIT (int *) ;
 int mpt_configure_ioc (struct mpt_softc*,int ,int ) ;
 int mpt_ioc_diag (int ) ;
 int mpt_lprt (struct mpt_softc*,int ,char*,int ) ;
 int mpt_read (struct mpt_softc*,int ) ;
 int mpt_sysctl_attach (struct mpt_softc*) ;

__attribute__((used)) static int
mpt_core_attach(struct mpt_softc *mpt)
{
        int val, error;

 LIST_INIT(&mpt->ack_frames);

 TAILQ_INIT(&mpt->request_pending_list);
 TAILQ_INIT(&mpt->request_free_list);
 TAILQ_INIT(&mpt->request_timeout_list);
 for (val = 0; val < MPT_MAX_LUNS; val++) {
  STAILQ_INIT(&mpt->trt[val].atios);
  STAILQ_INIT(&mpt->trt[val].inots);
 }
 STAILQ_INIT(&mpt->trt_wildcard.atios);
 STAILQ_INIT(&mpt->trt_wildcard.inots);



 mpt->scsi_tgt_handler_id = MPT_HANDLER_ID_NONE;
 mpt_sysctl_attach(mpt);
 mpt_lprt(mpt, MPT_PRT_DEBUG, "doorbell req = %s\n",
     mpt_ioc_diag(mpt_read(mpt, MPT_OFFSET_DOORBELL)));

 MPT_LOCK(mpt);
 error = mpt_configure_ioc(mpt, 0, 0);
 MPT_UNLOCK(mpt);

 return (error);
}

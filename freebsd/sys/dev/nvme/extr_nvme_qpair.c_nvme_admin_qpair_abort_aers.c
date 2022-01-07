
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvme_tracker {TYPE_2__* req; } ;
struct nvme_qpair {int outstanding_tr; } ;
struct TYPE_3__ {scalar_t__ opc; } ;
struct TYPE_4__ {TYPE_1__ cmd; } ;


 int ERROR_PRINT_NONE ;
 scalar_t__ NVME_OPC_ASYNC_EVENT_REQUEST ;
 int NVME_SCT_GENERIC ;
 int NVME_SC_ABORTED_SQ_DELETION ;
 struct nvme_tracker* TAILQ_FIRST (int *) ;
 struct nvme_tracker* TAILQ_NEXT (struct nvme_tracker*,int ) ;
 int nvme_qpair_manual_complete_tracker (struct nvme_qpair*,struct nvme_tracker*,int ,int ,int ,int ) ;
 int tailq ;

__attribute__((used)) static void
nvme_admin_qpair_abort_aers(struct nvme_qpair *qpair)
{
 struct nvme_tracker *tr;

 tr = TAILQ_FIRST(&qpair->outstanding_tr);
 while (tr != ((void*)0)) {
  if (tr->req->cmd.opc == NVME_OPC_ASYNC_EVENT_REQUEST) {
   nvme_qpair_manual_complete_tracker(qpair, tr,
       NVME_SCT_GENERIC, NVME_SC_ABORTED_SQ_DELETION, 0,
       ERROR_PRINT_NONE);
   tr = TAILQ_FIRST(&qpair->outstanding_tr);
  } else {
   tr = TAILQ_NEXT(tr, tailq);
  }
 }
}

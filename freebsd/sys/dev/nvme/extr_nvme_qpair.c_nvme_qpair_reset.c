
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_qpair {int phase; int num_entries; int cpl; int cmd; scalar_t__ cq_head; scalar_t__ sq_tail; scalar_t__ sq_head; } ;
struct nvme_completion {int dummy; } ;
struct nvme_command {int dummy; } ;


 int memset (int ,int ,int) ;

void
nvme_qpair_reset(struct nvme_qpair *qpair)
{

 qpair->sq_head = qpair->sq_tail = qpair->cq_head = 0;
 qpair->phase = 1;

 memset(qpair->cmd, 0,
     qpair->num_entries * sizeof(struct nvme_command));
 memset(qpair->cpl, 0,
     qpair->num_entries * sizeof(struct nvme_completion));
}

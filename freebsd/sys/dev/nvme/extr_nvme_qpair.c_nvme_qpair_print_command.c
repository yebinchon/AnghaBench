
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct nvme_qpair {scalar_t__ id; int ctrlr; } ;
struct nvme_command {int cdw15; int cdw14; int cdw13; int cdw12; int cdw11; int cdw10; scalar_t__ prp2; scalar_t__ prp1; scalar_t__ mptr; int rsvd3; int rsvd2; int nsid; } ;


 int nvme_admin_qpair_print_command (struct nvme_qpair*,struct nvme_command*) ;
 int nvme_io_qpair_print_command (struct nvme_qpair*,struct nvme_command*) ;
 int nvme_printf (int ,char*,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ nvme_verbose_cmd_dump ;

__attribute__((used)) static void
nvme_qpair_print_command(struct nvme_qpair *qpair, struct nvme_command *cmd)
{
 if (qpair->id == 0)
  nvme_admin_qpair_print_command(qpair, cmd);
 else
  nvme_io_qpair_print_command(qpair, cmd);
 if (nvme_verbose_cmd_dump) {
  nvme_printf(qpair->ctrlr,
      "nsid:%#x rsvd2:%#x rsvd3:%#x mptr:%#jx prp1:%#jx prp2:%#jx\n",
      cmd->nsid, cmd->rsvd2, cmd->rsvd3, (uintmax_t)cmd->mptr,
      (uintmax_t)cmd->prp1, (uintmax_t)cmd->prp2);
  nvme_printf(qpair->ctrlr,
      "cdw10: %#x cdw11:%#x cdw12:%#x cdw13:%#x cdw14:%#x cdw15:%#x\n",
      cmd->cdw10, cmd->cdw11, cmd->cdw12, cmd->cdw13, cmd->cdw14,
      cmd->cdw15);
 }
}

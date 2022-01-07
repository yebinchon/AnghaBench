
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_qpair {int id; int ctrlr; } ;
struct nvme_command {int cdw11; int cdw10; int nsid; int cid; int opc; } ;


 int get_admin_opcode_string (int ) ;
 int le32toh (int ) ;
 int nvme_printf (int ,char*,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
nvme_admin_qpair_print_command(struct nvme_qpair *qpair,
    struct nvme_command *cmd)
{

 nvme_printf(qpair->ctrlr, "%s (%02x) sqid:%d cid:%d nsid:%x "
     "cdw10:%08x cdw11:%08x\n",
     get_admin_opcode_string(cmd->opc), cmd->opc, qpair->id, cmd->cid,
     le32toh(cmd->nsid), le32toh(cmd->cdw10), le32toh(cmd->cdw11));
}

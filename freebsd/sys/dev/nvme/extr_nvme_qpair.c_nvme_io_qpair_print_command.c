
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_qpair {int id; int ctrlr; } ;
struct nvme_command {int opc; int nsid; int cid; int cdw12; int cdw10; int cdw11; } ;
 int get_io_opcode_string (int) ;
 int le32toh (int ) ;
 int nvme_printf (int ,char*,int ,int,int ,int,...) ;

__attribute__((used)) static void
nvme_io_qpair_print_command(struct nvme_qpair *qpair,
    struct nvme_command *cmd)
{

 switch (cmd->opc) {
 case 130:
 case 136:
 case 129:
 case 139:
 case 128:
 case 131:
  nvme_printf(qpair->ctrlr, "%s sqid:%d cid:%d nsid:%d "
      "lba:%llu len:%d\n",
      get_io_opcode_string(cmd->opc), qpair->id, cmd->cid, le32toh(cmd->nsid),
      ((unsigned long long)le32toh(cmd->cdw11) << 32) + le32toh(cmd->cdw10),
      (le32toh(cmd->cdw12) & 0xFFFF) + 1);
  break;
 case 137:
 case 138:
 case 134:
 case 132:
 case 135:
 case 133:
  nvme_printf(qpair->ctrlr, "%s sqid:%d cid:%d nsid:%d\n",
      get_io_opcode_string(cmd->opc), qpair->id, cmd->cid, le32toh(cmd->nsid));
  break;
 default:
  nvme_printf(qpair->ctrlr, "%s (%02x) sqid:%d cid:%d nsid:%d\n",
      get_io_opcode_string(cmd->opc), cmd->opc, qpair->id,
      cmd->cid, le32toh(cmd->nsid));
  break;
 }
}

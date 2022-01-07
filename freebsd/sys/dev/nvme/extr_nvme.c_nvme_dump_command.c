
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct nvme_command {int opc; int fuse; int cid; int rsvd2; int rsvd3; int nsid; int cdw15; int cdw14; int cdw13; int cdw12; int cdw11; int cdw10; int prp2; int prp1; int mptr; } ;


 int le32toh (int ) ;
 scalar_t__ le64toh (int ) ;
 int printf (char*,int,int,int,int,int,int,int ,int ,int ,int,int,int,int,int,int) ;

void
nvme_dump_command(struct nvme_command *cmd)
{

 printf(
"opc:%x f:%x cid:%x nsid:%x r2:%x r3:%x mptr:%jx prp1:%jx prp2:%jx cdw:%x %x %x %x %x %x\n",
     cmd->opc, cmd->fuse, cmd->cid, le32toh(cmd->nsid),
     cmd->rsvd2, cmd->rsvd3,
     (uintmax_t)le64toh(cmd->mptr), (uintmax_t)le64toh(cmd->prp1), (uintmax_t)le64toh(cmd->prp2),
     le32toh(cmd->cdw10), le32toh(cmd->cdw11), le32toh(cmd->cdw12),
     le32toh(cmd->cdw13), le32toh(cmd->cdw14), le32toh(cmd->cdw15));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mpr_usr_command {int req_len; int rpl_len; } ;
struct mpr_command {scalar_t__ cm_req; } ;
struct TYPE_3__ {int SGL; } ;
typedef TYPE_1__ MPI2_SMP_PASSTHROUGH_REQUEST ;
typedef int MPI2_SMP_PASSTHROUGH_REPLY ;


 int EINVAL ;
 int mpr_init_sge (struct mpr_command*,TYPE_1__*,int *) ;

__attribute__((used)) static int
mpi_pre_smp_passthrough(struct mpr_command *cm, struct mpr_usr_command *cmd)
{
 MPI2_SMP_PASSTHROUGH_REQUEST *req = (void *)cm->cm_req;
 MPI2_SMP_PASSTHROUGH_REPLY *rpl;

 if (cmd->req_len != sizeof *req)
  return (EINVAL);
 if (cmd->rpl_len != sizeof *rpl)
  return (EINVAL);

 mpr_init_sge(cm, req, &req->SGL);
 return (0);
}

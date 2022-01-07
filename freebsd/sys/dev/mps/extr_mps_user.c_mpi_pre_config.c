
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mps_usr_command {int req_len; int rpl_len; } ;
struct mps_command {scalar_t__ cm_req; } ;
struct TYPE_3__ {int PageBufferSGE; } ;
typedef TYPE_1__ MPI2_CONFIG_REQUEST ;
typedef int MPI2_CONFIG_REPLY ;


 int EINVAL ;
 int mpi_init_sge (struct mps_command*,TYPE_1__*,int *) ;

__attribute__((used)) static int
mpi_pre_config(struct mps_command *cm, struct mps_usr_command *cmd)
{
 MPI2_CONFIG_REQUEST *req = (void *)cm->cm_req;
 MPI2_CONFIG_REPLY *rpl;

 if (cmd->req_len != sizeof *req)
  return (EINVAL);
 if (cmd->rpl_len != sizeof *rpl)
  return (EINVAL);

 mpi_init_sge(cm, req, &req->PageBufferSGE);
 return (0);
}

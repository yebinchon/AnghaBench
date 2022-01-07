
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mps_usr_command {int req_len; int rpl_len; } ;
struct mps_command {scalar_t__ cm_sglsize; int * cm_sge; scalar_t__ cm_req; } ;
typedef int MPI2_IOC_FACTS_REQUEST ;
typedef int MPI2_IOC_FACTS_REPLY ;


 int EINVAL ;

__attribute__((used)) static int
mpi_pre_ioc_facts(struct mps_command *cm, struct mps_usr_command *cmd)
{
 MPI2_IOC_FACTS_REQUEST *req = (void *)cm->cm_req;
 MPI2_IOC_FACTS_REPLY *rpl;

 if (cmd->req_len != sizeof *req)
  return (EINVAL);
 if (cmd->rpl_len != sizeof *rpl)
  return (EINVAL);

 cm->cm_sge = ((void*)0);
 cm->cm_sglsize = 0;
 return (0);
}

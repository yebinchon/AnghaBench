
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct mps_usr_command {int req_len; int rpl_len; int len; } ;
struct mps_command {int cm_flags; scalar_t__ cm_req; } ;
struct TYPE_7__ {int SGL; } ;
struct TYPE_6__ {int DetailsLength; int ImageSize; scalar_t__ ImageOffset; scalar_t__ ContextSize; } ;
typedef TYPE_1__ MPI2_FW_UPLOAD_TCSGE ;
typedef TYPE_2__ MPI2_FW_UPLOAD_REQUEST ;
typedef int MPI2_FW_UPLOAD_REPLY ;


 int CTASSERT (int) ;
 int EINVAL ;
 int MPS_CM_FLAGS_DATAIN ;
 int MPS_SGC_SIZE ;
 int bzero (TYPE_1__*,int) ;
 int mpi_init_sge (struct mps_command*,TYPE_2__*,int *) ;
 int mps_push_sge (struct mps_command*,TYPE_1__*,int,int ) ;

__attribute__((used)) static int
mpi_pre_fw_upload(struct mps_command *cm, struct mps_usr_command *cmd)
{
 MPI2_FW_UPLOAD_REQUEST *req = (void *)cm->cm_req;
 MPI2_FW_UPLOAD_REPLY *rpl;
 MPI2_FW_UPLOAD_TCSGE tc;





 CTASSERT(sizeof req->SGL >= sizeof tc + MPS_SGC_SIZE);

 if (cmd->req_len != sizeof *req)
  return (EINVAL);
 if (cmd->rpl_len != sizeof *rpl)
  return (EINVAL);

 mpi_init_sge(cm, req, &req->SGL);
 bzero(&tc, sizeof tc);





 tc.ContextSize = 0;
 tc.DetailsLength = 12;




 tc.ImageOffset = 0;
 tc.ImageSize = cmd->len;

 cm->cm_flags |= MPS_CM_FLAGS_DATAIN;

 return (mps_push_sge(cm, &tc, sizeof tc, 0));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mpr_usr_command {int req_len; int rpl_len; scalar_t__ len; int buf; } ;
struct mpr_command {int cm_flags; int cm_data; scalar_t__ cm_req; } ;
struct TYPE_3__ {int MsgFlags; scalar_t__ TotalImageSize; scalar_t__ ImageSize; int SGL; scalar_t__ ImageOffset; } ;
typedef int MPI2_FW_DOWNLOAD_REPLY ;
typedef TYPE_1__ MPI25_FW_DOWNLOAD_REQUEST ;


 int EINVAL ;
 int MPI2_FW_DOWNLOAD_MSGFLGS_LAST_SEGMENT ;
 int MPR_CM_FLAGS_DATAOUT ;
 int copyin (int ,int ,scalar_t__) ;
 int mpr_init_sge (struct mpr_command*,TYPE_1__*,int *) ;
 int mpr_push_ieee_sge (struct mpr_command*,int *,int ) ;

__attribute__((used)) static int
mpi_pre_fw_download(struct mpr_command *cm, struct mpr_usr_command *cmd)
{
 MPI25_FW_DOWNLOAD_REQUEST *req = (void *)cm->cm_req;
 MPI2_FW_DOWNLOAD_REPLY *rpl;
 int error;

 if (cmd->req_len != sizeof *req)
  return (EINVAL);
 if (cmd->rpl_len != sizeof *rpl)
  return (EINVAL);

 if (cmd->len == 0)
  return (EINVAL);

 error = copyin(cmd->buf, cm->cm_data, cmd->len);
 if (error != 0)
  return (error);

 mpr_init_sge(cm, req, &req->SGL);




 if ((req->MsgFlags & MPI2_FW_DOWNLOAD_MSGFLGS_LAST_SEGMENT) == 0)
  return (EINVAL);
 if (req->TotalImageSize != cmd->len)
  return (EINVAL);

 req->ImageOffset = 0;
 req->ImageSize = cmd->len;

 cm->cm_flags |= MPR_CM_FLAGS_DATAOUT;

 return (mpr_push_ieee_sge(cm, &req->SGL, 0));
}

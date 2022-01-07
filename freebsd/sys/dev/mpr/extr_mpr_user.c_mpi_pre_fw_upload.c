
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mpr_usr_command {int req_len; int rpl_len; scalar_t__ len; } ;
struct mpr_command {int cm_flags; scalar_t__ cm_req; } ;
struct TYPE_3__ {scalar_t__ ImageSize; int SGL; scalar_t__ ImageOffset; } ;
typedef int MPI2_FW_UPLOAD_REPLY ;
typedef TYPE_1__ MPI25_FW_UPLOAD_REQUEST ;


 int EINVAL ;
 int MPR_CM_FLAGS_DATAIN ;
 int mpr_init_sge (struct mpr_command*,TYPE_1__*,int *) ;
 int mpr_push_ieee_sge (struct mpr_command*,int *,int ) ;

__attribute__((used)) static int
mpi_pre_fw_upload(struct mpr_command *cm, struct mpr_usr_command *cmd)
{
 MPI25_FW_UPLOAD_REQUEST *req = (void *)cm->cm_req;
 MPI2_FW_UPLOAD_REPLY *rpl;

 if (cmd->req_len != sizeof *req)
  return (EINVAL);
 if (cmd->rpl_len != sizeof *rpl)
  return (EINVAL);

 mpr_init_sge(cm, req, &req->SGL);
 if (cmd->len == 0) {

  return (0);
 }

 req->ImageOffset = 0;
 req->ImageSize = cmd->len;

 cm->cm_flags |= MPR_CM_FLAGS_DATAIN;

 return (mpr_push_ieee_sge(cm, &req->SGL, 0));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
struct TYPE_2__ {int size; int context; int result; int type; scalar_t__ flags; } ;
struct hpt_iop_request_set_config {TYPE_1__ header; } ;
struct hpt_iop_request_header {int dummy; } ;
struct hpt_iop_hba {struct hpt_iop_request_set_config* ctlcfg_ptr; } ;


 int IOP_REQUEST_TYPE_SET_CONFIG ;
 int IOP_RESULT_PENDING ;
 int KdPrint (char*) ;
 int MVIOP_CMD_TYPE_SET_CONFIG ;
 scalar_t__ hptiop_send_sync_request_mv (struct hpt_iop_hba*,struct hpt_iop_request_set_config*,int) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int hptiop_set_config_mv(struct hpt_iop_hba *hba,
    struct hpt_iop_request_set_config *config)
{
 struct hpt_iop_request_set_config *req;

 if (!(req = hba->ctlcfg_ptr))
  return -1;

 memcpy((u_int8_t *)req + sizeof(struct hpt_iop_request_header),
  (u_int8_t *)config + sizeof(struct hpt_iop_request_header),
  sizeof(struct hpt_iop_request_set_config) -
   sizeof(struct hpt_iop_request_header));

 req->header.flags = 0;
 req->header.type = IOP_REQUEST_TYPE_SET_CONFIG;
 req->header.size = sizeof(struct hpt_iop_request_set_config);
 req->header.result = IOP_RESULT_PENDING;
 req->header.context = MVIOP_CMD_TYPE_SET_CONFIG;

 if (hptiop_send_sync_request_mv(hba, req, 20000)) {
  KdPrint(("hptiop: set config send cmd failed"));
  return -1;
 }

 return 0;
}

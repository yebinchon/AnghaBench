
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_15__ {TYPE_6__* virt; } ;
struct TYPE_16__ {int os; TYPE_3__ bmbx; } ;
typedef TYPE_4__ sli4_t ;
struct TYPE_17__ {int dword; } ;
typedef TYPE_5__ sli4_features_t ;
struct TYPE_14__ {int dword; } ;
struct TYPE_13__ {scalar_t__ status; } ;
struct TYPE_18__ {TYPE_2__ response; TYPE_1__ hdr; } ;
typedef TYPE_6__ sli4_cmd_request_features_t ;
typedef int int32_t ;


 int SLI4_BMBX_SIZE ;
 int ocs_log_crit (int ,char*) ;
 int ocs_log_err (int ,char*,...) ;
 scalar_t__ sli_bmbx_command (TYPE_4__*) ;
 scalar_t__ sli_cmd_request_features (TYPE_4__*,TYPE_6__*,int ,TYPE_5__,int ) ;

__attribute__((used)) static int32_t
sli_request_features(sli4_t *sli4, sli4_features_t *features, uint8_t query)
{

 if (sli_cmd_request_features(sli4, sli4->bmbx.virt, SLI4_BMBX_SIZE,
    *features, query)) {
  sli4_cmd_request_features_t *req_features = sli4->bmbx.virt;

  if (sli_bmbx_command(sli4)) {
   ocs_log_crit(sli4->os, "bootstrap mailbox write fail (REQUEST_FEATURES)\n");
   return -1;
  }
  if (req_features->hdr.status) {
   ocs_log_err(sli4->os, "REQUEST_FEATURES bad status %#x\n",
     req_features->hdr.status);
   return -1;
  }
  features->dword = req_features->response.dword;
 } else {
  ocs_log_err(sli4->os, "bad REQUEST_FEATURES write\n");
  return -1;
 }

 return 0;
}

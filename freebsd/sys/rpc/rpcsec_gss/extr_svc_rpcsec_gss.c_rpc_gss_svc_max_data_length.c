
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_rpc_gss_cookedcred {struct svc_rpc_gss_client* cc_client; } ;
struct TYPE_2__ {int service; } ;
struct svc_rpc_gss_client {int cl_mech; int cl_qop; int cl_ctx; TYPE_1__ cl_rawcred; } ;
struct svc_req {struct svc_rpc_gss_cookedcred* rq_clntcred; } ;
typedef scalar_t__ OM_uint32 ;


 int FALSE ;
 scalar_t__ GSS_S_COMPLETE ;
 int TRUE ;
 scalar_t__ gss_wrap_size_limit (scalar_t__*,int ,int,int ,int,scalar_t__*) ;
 int rpc_gss_log_status (char*,int ,scalar_t__,scalar_t__) ;





int
rpc_gss_svc_max_data_length(struct svc_req *req, int max_tp_unit_len)
{
 struct svc_rpc_gss_cookedcred *cc = req->rq_clntcred;
 struct svc_rpc_gss_client *client = cc->cc_client;
 int want_conf;
 OM_uint32 max;
 OM_uint32 maj_stat, min_stat;
 int result;

 switch (client->cl_rawcred.service) {
 case 129:
  return (max_tp_unit_len);
  break;

 case 131:
 case 130:
  want_conf = FALSE;
  break;

 case 128:
  want_conf = TRUE;
  break;

 default:
  return (0);
 }

 maj_stat = gss_wrap_size_limit(&min_stat, client->cl_ctx, want_conf,
     client->cl_qop, max_tp_unit_len, &max);

 if (maj_stat == GSS_S_COMPLETE) {
  result = (int) max;
  if (result < 0)
   result = 0;
  return (result);
 } else {
  rpc_gss_log_status("gss_wrap_size_limit", client->cl_mech,
      maj_stat, min_stat);
  return (0);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int oa_flavor; } ;
struct TYPE_6__ {int * svc_ah_private; int * svc_ah_ops; } ;
struct svc_req {TYPE_1__ rq_cred; TYPE_3__ rq_auth; } ;
struct TYPE_5__ {TYPE_1__ cb_cred; } ;
struct rpc_msg {TYPE_2__ rm_call; } ;
typedef enum auth_stat { ____Placeholder_auth_stat } auth_stat ;



 int AUTH_REJECTEDCRED ;



 int _svcauth_null (struct svc_req*,struct rpc_msg*) ;
 int _svcauth_rpcsec_gss (struct svc_req*,struct rpc_msg*) ;
 int _svcauth_short (struct svc_req*,struct rpc_msg*) ;
 int _svcauth_unix (struct svc_req*,struct rpc_msg*) ;
 int svc_auth_null_ops ;

enum auth_stat
_authenticate(struct svc_req *rqst, struct rpc_msg *msg)
{
 int cred_flavor;
 enum auth_stat dummy;

 rqst->rq_cred = msg->rm_call.cb_cred;
 rqst->rq_auth.svc_ah_ops = &svc_auth_null_ops;
 rqst->rq_auth.svc_ah_private = ((void*)0);
 cred_flavor = rqst->rq_cred.oa_flavor;
 switch (cred_flavor) {
 case 131:
  dummy = _svcauth_null(rqst, msg);
  return (dummy);
 case 129:
  dummy = _svcauth_unix(rqst, msg);
  return (dummy);
 case 130:
  dummy = _svcauth_short(rqst, msg);
  return (dummy);
 case 128:
  if (!_svcauth_rpcsec_gss)
   return (AUTH_REJECTEDCRED);
  dummy = _svcauth_rpcsec_gss(rqst, msg);
  return (dummy);
 default:
  break;
 }

 return (AUTH_REJECTEDCRED);
}

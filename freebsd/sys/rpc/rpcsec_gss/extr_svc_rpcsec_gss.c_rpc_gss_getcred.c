
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_rpc_gss_cookedcred {struct svc_rpc_gss_client* cc_client; } ;
struct svc_rpc_gss_client {void* cl_cookie; int cl_ucred; int cl_rawcred; } ;
struct TYPE_2__ {scalar_t__ oa_flavor; } ;
struct svc_req {struct svc_rpc_gss_cookedcred* rq_clntcred; TYPE_1__ rq_cred; } ;
typedef int rpc_gss_ucred_t ;
typedef int rpc_gss_rawcred_t ;
typedef int bool_t ;


 int FALSE ;
 scalar_t__ RPCSEC_GSS ;
 int TRUE ;

bool_t
rpc_gss_getcred(struct svc_req *req, rpc_gss_rawcred_t **rcred,
    rpc_gss_ucred_t **ucred, void **cookie)
{
 struct svc_rpc_gss_cookedcred *cc;
 struct svc_rpc_gss_client *client;

 if (req->rq_cred.oa_flavor != RPCSEC_GSS)
  return (FALSE);

 cc = req->rq_clntcred;
 client = cc->cc_client;
 if (rcred)
  *rcred = &client->cl_rawcred;
 if (ucred)
  *ucred = &client->cl_ucred;
 if (cookie)
  *cookie = client->cl_cookie;
 return (TRUE);
}

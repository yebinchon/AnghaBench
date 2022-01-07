
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct svc_rpc_gss_cookedcred {scalar_t__ cc_service; int cc_seq; struct svc_rpc_gss_client* cc_client; } ;
struct svc_rpc_gss_client {scalar_t__ cl_state; int cl_qop; int cl_ctx; } ;
struct mbuf {int dummy; } ;
typedef int bool_t ;
struct TYPE_3__ {scalar_t__ svc_ah_private; } ;
typedef TYPE_1__ SVCAUTH ;


 scalar_t__ CLIENT_ESTABLISHED ;
 int TRUE ;
 int rpc_gss_log_debug (char*) ;
 scalar_t__ rpc_gss_svc_none ;
 int xdr_rpc_gss_unwrap_data (struct mbuf**,int ,int ,scalar_t__,int ) ;

__attribute__((used)) static bool_t
svc_rpc_gss_unwrap(SVCAUTH *auth, struct mbuf **mp)
{
 struct svc_rpc_gss_cookedcred *cc;
 struct svc_rpc_gss_client *client;

 rpc_gss_log_debug("in svc_rpc_gss_unwrap()");

 cc = (struct svc_rpc_gss_cookedcred *) auth->svc_ah_private;
 client = cc->cc_client;
 if (client->cl_state != CLIENT_ESTABLISHED
     || cc->cc_service == rpc_gss_svc_none) {
  return (TRUE);
 }

 return (xdr_rpc_gss_unwrap_data(mp,
  client->cl_ctx, client->cl_qop,
  cc->cc_service, cc->cc_seq));
}

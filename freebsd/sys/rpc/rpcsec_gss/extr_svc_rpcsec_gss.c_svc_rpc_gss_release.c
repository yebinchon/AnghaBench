
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct svc_rpc_gss_cookedcred {struct svc_rpc_gss_client* cc_client; } ;
struct svc_rpc_gss_client {int dummy; } ;
struct TYPE_3__ {scalar_t__ svc_ah_private; } ;
typedef TYPE_1__ SVCAUTH ;


 int rpc_gss_log_debug (char*) ;
 int svc_rpc_gss_release_client (struct svc_rpc_gss_client*) ;

__attribute__((used)) static void
svc_rpc_gss_release(SVCAUTH *auth)
{
 struct svc_rpc_gss_cookedcred *cc;
 struct svc_rpc_gss_client *client;

 rpc_gss_log_debug("in svc_rpc_gss_release()");

 cc = (struct svc_rpc_gss_cookedcred *) auth->svc_ah_private;
 client = cc->cc_client;
 svc_rpc_gss_release_client(client);
}

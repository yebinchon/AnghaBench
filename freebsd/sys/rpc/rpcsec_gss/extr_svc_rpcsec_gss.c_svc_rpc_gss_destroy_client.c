
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct svc_rpc_gss_client* client_principal; } ;
struct svc_rpc_gss_client {int len; int cl_lock; scalar_t__ cl_cred; TYPE_1__ cl_rawcred; int cl_cname; int cl_ctx; } ;
typedef int OM_uint32 ;


 int GSS_C_NO_BUFFER ;
 int crfree (scalar_t__) ;
 int gss_delete_sec_context (int *,int *,int ) ;
 int gss_release_name (int *,int *) ;
 int mem_free (struct svc_rpc_gss_client*,int) ;
 int rpc_gss_log_debug (char*) ;
 int sx_destroy (int *) ;

__attribute__((used)) static void
svc_rpc_gss_destroy_client(struct svc_rpc_gss_client *client)
{
 OM_uint32 min_stat;

 rpc_gss_log_debug("in svc_rpc_gss_destroy_client()");

 if (client->cl_ctx)
  gss_delete_sec_context(&min_stat,
      &client->cl_ctx, GSS_C_NO_BUFFER);

 if (client->cl_cname)
  gss_release_name(&min_stat, &client->cl_cname);

 if (client->cl_rawcred.client_principal)
  mem_free(client->cl_rawcred.client_principal,
      sizeof(*client->cl_rawcred.client_principal)
      + client->cl_rawcred.client_principal->len);

 if (client->cl_cred)
  crfree(client->cl_cred);

 sx_destroy(&client->cl_lock);
 mem_free(client, sizeof(*client));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rpc_gss_client {int cl_refs; } ;


 int refcount_release (int *) ;
 int svc_rpc_gss_destroy_client (struct svc_rpc_gss_client*) ;

__attribute__((used)) static void
svc_rpc_gss_release_client(struct svc_rpc_gss_client *client)
{

 if (!refcount_release(&client->cl_refs))
  return;
 svc_rpc_gss_destroy_client(client);
}

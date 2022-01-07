
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rpc_gss_client_list {int dummy; } ;


 int RPCSEC_GSS ;
 int TAILQ_INIT (int *) ;
 int * mem_alloc (int) ;
 int rpc_gss_svc_getcred ;
 int svc_auth_reg (int ,int ,int ) ;
 int svc_rpc_gss ;
 int * svc_rpc_gss_client_hash ;
 int svc_rpc_gss_client_hash_size ;
 int svc_rpc_gss_clients ;
 int svc_rpc_gss_lock ;
 int sx_init (int *,char*) ;

__attribute__((used)) static void
svc_rpc_gss_init(void *arg)
{
 int i;

 svc_rpc_gss_client_hash = mem_alloc(sizeof(struct svc_rpc_gss_client_list) * svc_rpc_gss_client_hash_size);
 for (i = 0; i < svc_rpc_gss_client_hash_size; i++)
  TAILQ_INIT(&svc_rpc_gss_client_hash[i]);
 TAILQ_INIT(&svc_rpc_gss_clients);
 svc_auth_reg(RPCSEC_GSS, svc_rpc_gss, rpc_gss_svc_getcred);
 sx_init(&svc_rpc_gss_lock, "gsslock");
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RPC_GSS_HASH_SIZE ;
 int TAILQ_INIT (int *) ;
 int rpc_gss_all ;
 int * rpc_gss_cache ;
 int rpc_gss_lock ;
 int sx_init (int *,char*) ;

__attribute__((used)) static void
rpc_gss_hashinit(void *dummy)
{
 int i;

 for (i = 0; i < RPC_GSS_HASH_SIZE; i++)
  TAILQ_INIT(&rpc_gss_cache[i]);
 TAILQ_INIT(&rpc_gss_all);
 sx_init(&rpc_gss_lock, "rpc_gss_lock");
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_rpc_gss_client_list {int dummy; } ;
struct TYPE_2__ {size_t ci_id; } ;
struct svc_rpc_gss_client {TYPE_1__ cl_id; } ;


 int SX_XLOCKED ;
 int TAILQ_REMOVE (struct svc_rpc_gss_client_list*,struct svc_rpc_gss_client*,int ) ;
 int cl_alllink ;
 int cl_link ;
 int svc_rpc_gss_client_count ;
 struct svc_rpc_gss_client_list* svc_rpc_gss_client_hash ;
 size_t svc_rpc_gss_client_hash_size ;
 struct svc_rpc_gss_client_list svc_rpc_gss_clients ;
 int svc_rpc_gss_lock ;
 int sx_assert (int *,int ) ;

__attribute__((used)) static void
svc_rpc_gss_forget_client_locked(struct svc_rpc_gss_client *client)
{
 struct svc_rpc_gss_client_list *list;

 sx_assert(&svc_rpc_gss_lock, SX_XLOCKED);
 list = &svc_rpc_gss_client_hash[client->cl_id.ci_id % svc_rpc_gss_client_hash_size];
 TAILQ_REMOVE(list, client, cl_link);
 TAILQ_REMOVE(&svc_rpc_gss_clients, client, cl_alllink);
 svc_rpc_gss_client_count--;
}

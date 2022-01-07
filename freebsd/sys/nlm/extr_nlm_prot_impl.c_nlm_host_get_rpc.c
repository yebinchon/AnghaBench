
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct nlm_rpc {scalar_t__ nr_create_time; int * nr_client; } ;
struct nlm_host {int nh_lock; int nh_vers; int nh_addr; struct nlm_rpc nh_clntrpc; struct nlm_rpc nh_srvrpc; } ;
typedef scalar_t__ bool_t ;
typedef int CLIENT ;


 int CLNT_ACQUIRE (int *) ;
 int CLNT_DESTROY (int *) ;
 int CLNT_RELEASE (int *) ;
 int NLM_PROG ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int * nlm_get_rpc (struct sockaddr*,int ,int ) ;
 scalar_t__ time_uptime ;

CLIENT *
nlm_host_get_rpc(struct nlm_host *host, bool_t isserver)
{
 struct nlm_rpc *rpc;
 CLIENT *client;

 mtx_lock(&host->nh_lock);

 if (isserver)
  rpc = &host->nh_srvrpc;
 else
  rpc = &host->nh_clntrpc;
 if (rpc->nr_client && time_uptime > rpc->nr_create_time + 2*60) {
  client = rpc->nr_client;
  rpc->nr_client = ((void*)0);
  mtx_unlock(&host->nh_lock);
  CLNT_RELEASE(client);
  mtx_lock(&host->nh_lock);
 }

 if (!rpc->nr_client) {
  mtx_unlock(&host->nh_lock);
  client = nlm_get_rpc((struct sockaddr *)&host->nh_addr,
      NLM_PROG, host->nh_vers);
  mtx_lock(&host->nh_lock);

  if (client) {
   if (rpc->nr_client) {
    mtx_unlock(&host->nh_lock);
    CLNT_DESTROY(client);
    mtx_lock(&host->nh_lock);
   } else {
    rpc->nr_client = client;
    rpc->nr_create_time = time_uptime;
   }
  }
 }

 client = rpc->nr_client;
 if (client)
  CLNT_ACQUIRE(client);
 mtx_unlock(&host->nh_lock);

 return (client);

}

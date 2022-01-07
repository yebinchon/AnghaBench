
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nr_client; } ;
struct TYPE_3__ {scalar_t__ nr_client; } ;
struct nlm_host {int nh_sysctl; int nh_lock; TYPE_2__ nh_clntrpc; TYPE_1__ nh_srvrpc; } ;


 int CLNT_RELEASE (scalar_t__) ;
 int M_NLM ;
 int TAILQ_REMOVE (int *,struct nlm_host*,int ) ;
 int free (struct nlm_host*,int ) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int nh_link ;
 int nlm_global_lock ;
 int nlm_hosts ;
 int sysctl_ctx_free (int *) ;

__attribute__((used)) static void
nlm_host_destroy(struct nlm_host *host)
{

 mtx_lock(&nlm_global_lock);
 TAILQ_REMOVE(&nlm_hosts, host, nh_link);
 mtx_unlock(&nlm_global_lock);

 if (host->nh_srvrpc.nr_client)
  CLNT_RELEASE(host->nh_srvrpc.nr_client);
 if (host->nh_clntrpc.nr_client)
  CLNT_RELEASE(host->nh_clntrpc.nr_client);
 mtx_destroy(&host->nh_lock);
 sysctl_ctx_free(&host->nh_sysctl);
 free(host, M_NLM);
}

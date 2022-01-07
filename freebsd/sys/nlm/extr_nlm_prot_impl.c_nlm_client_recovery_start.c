
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_host {int nh_monstate; int nh_caller_name; } ;


 int NLM_DEBUG (int,char*,int ) ;
 int NLM_MONITORED ;
 int kthread_exit () ;
 int nlm_client_recovery (struct nlm_host*) ;
 int nlm_host_release (struct nlm_host*) ;

__attribute__((used)) static void
nlm_client_recovery_start(void *arg)
{
 struct nlm_host *host = (struct nlm_host *) arg;

 NLM_DEBUG(1, "NLM: client lock recovery for %s started\n",
     host->nh_caller_name);

 nlm_client_recovery(host);

 NLM_DEBUG(1, "NLM: client lock recovery for %s completed\n",
     host->nh_caller_name);

 host->nh_monstate = NLM_MONITORED;
 nlm_host_release(host);

 kthread_exit();
}

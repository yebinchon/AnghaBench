
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_recovery_context {int nr_state; struct nlm_host* nr_host; } ;
struct nlm_host {int dummy; } ;


 int ERESTART ;
 int NLM_SYSID_CLIENT ;
 int lf_iteratelocks_sysid (int,int ,struct nlm_recovery_context*) ;
 int nlm_client_recover_lock ;
 int nlm_host_get_state (struct nlm_host*) ;
 int nlm_host_get_sysid (struct nlm_host*) ;

void
nlm_client_recovery(struct nlm_host *host)
{
 struct nlm_recovery_context nr;
 int sysid, error;

 sysid = NLM_SYSID_CLIENT | nlm_host_get_sysid(host);
 do {
  nr.nr_host = host;
  nr.nr_state = nlm_host_get_state(host);
  error = lf_iteratelocks_sysid(sysid,
      nlm_client_recover_lock, &nr);
 } while (error == ERESTART);
}

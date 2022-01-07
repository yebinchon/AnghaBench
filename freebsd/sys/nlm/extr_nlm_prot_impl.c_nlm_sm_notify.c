
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int sysid ;
struct nlm_sm_status {int state; int priv; int mon_name; } ;
struct nlm_host {int dummy; } ;


 int NLM_DEBUG (int,char*,int ) ;
 int memcpy (int *,int *,int) ;
 struct nlm_host* nlm_find_host_by_sysid (int ) ;
 int nlm_host_notify (struct nlm_host*,int ) ;
 int nlm_host_release (struct nlm_host*) ;

void
nlm_sm_notify(struct nlm_sm_status *argp)
{
 uint32_t sysid;
 struct nlm_host *host;

 NLM_DEBUG(3, "nlm_sm_notify(): mon_name = %s\n", argp->mon_name);
 memcpy(&sysid, &argp->priv, sizeof(sysid));
 host = nlm_find_host_by_sysid(sysid);
 if (host) {
  nlm_host_notify(host, argp->state);
  nlm_host_release(host);
 }
}

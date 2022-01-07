
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct ieee80211vap {struct ieee80211_amrr* iv_rs; } ;
struct ieee80211_amrr {int amrr_min_success_threshold; int amrr_max_success_threshold; } ;


 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,int ,int ,char*,int,struct ieee80211vap*,int ,int ,char*,char*) ;
 int SYSCTL_ADD_UINT (struct sysctl_ctx_list*,int ,int ,char*,int,int *,int ,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int amrr_sysctl_interval ;

__attribute__((used)) static void
amrr_sysctlattach(struct ieee80211vap *vap,
    struct sysctl_ctx_list *ctx, struct sysctl_oid *tree)
{
 struct ieee80211_amrr *amrr = vap->iv_rs;

 if (!amrr)
  return;

 SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
     "amrr_rate_interval", CTLTYPE_INT | CTLFLAG_RW, vap,
     0, amrr_sysctl_interval, "I", "amrr operation interval (ms)");

 SYSCTL_ADD_UINT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
     "amrr_max_sucess_threshold", CTLFLAG_RW,
     &amrr->amrr_max_success_threshold, 0, "");
 SYSCTL_ADD_UINT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
     "amrr_min_sucess_threshold", CTLFLAG_RW,
     &amrr->amrr_min_success_threshold, 0, "");
}

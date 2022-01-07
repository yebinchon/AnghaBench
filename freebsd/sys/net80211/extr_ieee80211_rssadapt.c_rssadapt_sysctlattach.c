
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct ieee80211vap {int dummy; } ;


 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,int ,int ,char*,int,struct ieee80211vap*,int ,int ,char*,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int rssadapt_sysctl_interval ;

__attribute__((used)) static void
rssadapt_sysctlattach(struct ieee80211vap *vap,
    struct sysctl_ctx_list *ctx, struct sysctl_oid *tree)
{

 SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
     "rssadapt_rate_interval", CTLTYPE_INT | CTLFLAG_RW, vap,
     0, rssadapt_sysctl_interval, "I", "rssadapt operation interval (ms)");
}

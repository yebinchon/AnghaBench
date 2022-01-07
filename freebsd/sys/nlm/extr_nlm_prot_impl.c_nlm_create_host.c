
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid {int dummy; } ;
struct nlm_host {int nh_refs; int nh_sysid; int nh_grantcookie; int nh_sysctl; scalar_t__ nh_monstate; scalar_t__ nh_vers; int nh_caller_name; int nh_sysid_string; int nh_finished; int nh_granted; int nh_pending; scalar_t__ nh_state; int nh_lock; } ;


 int CTLFLAG_RD ;
 int CTLTYPE_INT ;
 int MAXNAMELEN ;
 int MA_OWNED ;
 int MTX_DEF ;
 int M_NLM ;
 int M_NOWAIT ;
 int M_ZERO ;
 int NLM_DEBUG (int,char*,char const*,int ) ;
 scalar_t__ NLM_UNMONITORED ;
 int OID_AUTO ;
 struct sysctl_oid* SYSCTL_ADD_NODE (int *,int ,int ,int ,int,int *,char*) ;
 int SYSCTL_ADD_PROC (int *,int ,int ,char*,int,struct nlm_host*,int ,int ,char*,char*) ;
 int SYSCTL_ADD_STRING (int *,int ,int ,char*,int,int ,int ,char*) ;
 int SYSCTL_ADD_UINT (int *,int ,int ,char*,int,scalar_t__*,int ,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int SYSCTL_STATIC_CHILDREN (int ) ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct nlm_host*,int ) ;
 int _vfs_nlm_sysid ;
 struct nlm_host* malloc (int,int ,int) ;
 int mtx_assert (int *,int ) ;
 int mtx_init (int *,char*,int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int nh_link ;
 int nlm_global_lock ;
 int nlm_host_client_lock_count_sysctl ;
 int nlm_host_lock_count_sysctl ;
 int nlm_hosts ;
 int nlm_next_sysid ;
 int snprintf (int ,int,char*,int) ;
 int strlcpy (int ,char const*,int ) ;
 int sysctl_ctx_init (int *) ;

__attribute__((used)) static struct nlm_host *
nlm_create_host(const char* caller_name)
{
 struct nlm_host *host;
 struct sysctl_oid *oid;

 mtx_assert(&nlm_global_lock, MA_OWNED);

 NLM_DEBUG(1, "NLM: new host %s (sysid %d)\n",
     caller_name, nlm_next_sysid);
 host = malloc(sizeof(struct nlm_host), M_NLM, M_NOWAIT|M_ZERO);
 if (!host)
  return (((void*)0));
 mtx_init(&host->nh_lock, "nh_lock", ((void*)0), MTX_DEF);
 host->nh_refs = 1;
 strlcpy(host->nh_caller_name, caller_name, MAXNAMELEN);
 host->nh_sysid = nlm_next_sysid++;
 snprintf(host->nh_sysid_string, sizeof(host->nh_sysid_string),
  "%d", host->nh_sysid);
 host->nh_vers = 0;
 host->nh_state = 0;
 host->nh_monstate = NLM_UNMONITORED;
 host->nh_grantcookie = 1;
 TAILQ_INIT(&host->nh_pending);
 TAILQ_INIT(&host->nh_granted);
 TAILQ_INIT(&host->nh_finished);
 TAILQ_INSERT_TAIL(&nlm_hosts, host, nh_link);

 mtx_unlock(&nlm_global_lock);

 sysctl_ctx_init(&host->nh_sysctl);
 oid = SYSCTL_ADD_NODE(&host->nh_sysctl,
     SYSCTL_STATIC_CHILDREN(_vfs_nlm_sysid),
     OID_AUTO, host->nh_sysid_string, CTLFLAG_RD, ((void*)0), "");
 SYSCTL_ADD_STRING(&host->nh_sysctl, SYSCTL_CHILDREN(oid), OID_AUTO,
     "hostname", CTLFLAG_RD, host->nh_caller_name, 0, "");
 SYSCTL_ADD_UINT(&host->nh_sysctl, SYSCTL_CHILDREN(oid), OID_AUTO,
     "version", CTLFLAG_RD, &host->nh_vers, 0, "");
 SYSCTL_ADD_UINT(&host->nh_sysctl, SYSCTL_CHILDREN(oid), OID_AUTO,
     "monitored", CTLFLAG_RD, &host->nh_monstate, 0, "");
 SYSCTL_ADD_PROC(&host->nh_sysctl, SYSCTL_CHILDREN(oid), OID_AUTO,
     "lock_count", CTLTYPE_INT | CTLFLAG_RD, host, 0,
     nlm_host_lock_count_sysctl, "I", "");
 SYSCTL_ADD_PROC(&host->nh_sysctl, SYSCTL_CHILDREN(oid), OID_AUTO,
     "client_lock_count", CTLTYPE_INT | CTLFLAG_RD, host, 0,
     nlm_host_client_lock_count_sysctl, "I", "");

 mtx_lock(&nlm_global_lock);

 return (host);
}

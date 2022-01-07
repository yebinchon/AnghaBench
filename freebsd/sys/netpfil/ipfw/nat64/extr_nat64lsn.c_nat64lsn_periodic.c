
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nat64lsn_job_item {int epoch_ctx; int pgchunk; int portgroups; int hosts; int jtype; } ;
struct TYPE_2__ {int stats; } ;
struct nat64lsn_cfg {scalar_t__ hosts_count; int periodic; TYPE_1__ base; int vp; } ;


 int CK_SLIST_INIT (int *) ;
 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int JTYPE_DESTROY ;
 int M_NOWAIT ;
 int NAT64LSN_EPOCH_CALL (int *,int ) ;
 int NAT64STAT_INC (int *,int ) ;
 int PERIODIC_DELAY ;
 int callout_schedule (int *,int) ;
 int hz ;
 int jnomem ;
 int nat64lsn_expire_hosts (struct nat64lsn_cfg*,int *) ;
 int nat64lsn_expire_pgchunk (struct nat64lsn_cfg*) ;
 int nat64lsn_expire_portgroups (struct nat64lsn_cfg*,int *) ;
 int nat64lsn_job_destroy ;
 int nat64lsn_job_zone ;
 struct nat64lsn_job_item* uma_zalloc (int ,int ) ;

__attribute__((used)) static void
nat64lsn_periodic(void *data)
{
 struct nat64lsn_job_item *ji;
 struct nat64lsn_cfg *cfg;

 cfg = (struct nat64lsn_cfg *) data;
 CURVNET_SET(cfg->vp);
 if (cfg->hosts_count > 0) {
  ji = uma_zalloc(nat64lsn_job_zone, M_NOWAIT);
  if (ji != ((void*)0)) {
   ji->jtype = JTYPE_DESTROY;
   CK_SLIST_INIT(&ji->hosts);
   CK_SLIST_INIT(&ji->portgroups);
   nat64lsn_expire_hosts(cfg, &ji->hosts);
   nat64lsn_expire_portgroups(cfg, &ji->portgroups);
   ji->pgchunk = nat64lsn_expire_pgchunk(cfg);
   NAT64LSN_EPOCH_CALL(&ji->epoch_ctx,
       nat64lsn_job_destroy);
  } else
   NAT64STAT_INC(&cfg->base.stats, jnomem);
 }
 callout_schedule(&cfg->periodic, hz * PERIODIC_DELAY);
 CURVNET_RESTORE();
}

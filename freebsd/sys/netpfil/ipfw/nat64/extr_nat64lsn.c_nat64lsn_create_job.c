
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nat64lsn_job_item {int jtype; scalar_t__ done; } ;
struct TYPE_2__ {int stats; } ;
struct nat64lsn_cfg {scalar_t__ jlen; scalar_t__ jmaxlen; TYPE_1__ base; } ;


 int DPRINTF (int ,char*) ;
 int DP_DROPS ;
 int M_NOWAIT ;
 int NAT64STAT_INC (int *,int ) ;
 int dropped ;
 int jmaxlen ;
 int jnomem ;
 int nat64lsn_job_zone ;
 struct nat64lsn_job_item* uma_zalloc (int ,int ) ;

__attribute__((used)) static struct nat64lsn_job_item *
nat64lsn_create_job(struct nat64lsn_cfg *cfg, int jtype)
{
 struct nat64lsn_job_item *ji;





 ji = ((void*)0);
 if (cfg->jlen >= cfg->jmaxlen)
  NAT64STAT_INC(&cfg->base.stats, jmaxlen);
 else {
  ji = uma_zalloc(nat64lsn_job_zone, M_NOWAIT);
  if (ji == ((void*)0))
   NAT64STAT_INC(&cfg->base.stats, jnomem);
 }
 if (ji == ((void*)0)) {
  NAT64STAT_INC(&cfg->base.stats, dropped);
  DPRINTF(DP_DROPS, "failed to create job");
 } else {
  ji->jtype = jtype;
  ji->done = 0;
 }
 return (ji);
}

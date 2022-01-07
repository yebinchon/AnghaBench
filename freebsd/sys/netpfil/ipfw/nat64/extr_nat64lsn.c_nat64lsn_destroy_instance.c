
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nat64lsn_host {int dummy; } ;
struct TYPE_3__ {int cnt; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;
struct nat64lsn_cfg {int hosts_hashsize; int plen4; struct nat64lsn_cfg* aliases; struct nat64lsn_cfg* hosts_hash; TYPE_2__ base; int jcallout; int periodic; } ;


 int CALLOUT_LOCK (struct nat64lsn_cfg*) ;
 int CALLOUT_LOCK_DESTROY (struct nat64lsn_cfg*) ;
 int CALLOUT_UNLOCK (struct nat64lsn_cfg*) ;
 int CFG_LOCK_DESTROY (struct nat64lsn_cfg*) ;
 int CK_SLIST_EMPTY (struct nat64lsn_cfg*) ;
 struct nat64lsn_host* CK_SLIST_FIRST (struct nat64lsn_cfg*) ;
 int CK_SLIST_REMOVE_HEAD (struct nat64lsn_cfg*,int ) ;
 int COUNTER_ARRAY_FREE (int ,int ) ;
 int M_NAT64LSN ;
 int NAT64STATS ;
 int callout_drain (int *) ;
 int entries ;
 int free (struct nat64lsn_cfg*,int ) ;
 int nat64lsn_destroy_alias (struct nat64lsn_cfg*,struct nat64lsn_cfg*) ;
 int nat64lsn_destroy_host (struct nat64lsn_host*) ;

void
nat64lsn_destroy_instance(struct nat64lsn_cfg *cfg)
{
 struct nat64lsn_host *host;
 int i;

 CALLOUT_LOCK(cfg);
 callout_drain(&cfg->periodic);
 CALLOUT_UNLOCK(cfg);
 callout_drain(&cfg->jcallout);

 for (i = 0; i < cfg->hosts_hashsize; i++) {
  while (!CK_SLIST_EMPTY(&cfg->hosts_hash[i])) {
   host = CK_SLIST_FIRST(&cfg->hosts_hash[i]);
   CK_SLIST_REMOVE_HEAD(&cfg->hosts_hash[i], entries);
   nat64lsn_destroy_host(host);
  }
 }

 for (i = 0; i < (1 << (32 - cfg->plen4)); i++)
  nat64lsn_destroy_alias(cfg, &cfg->aliases[i]);

 CALLOUT_LOCK_DESTROY(cfg);
 CFG_LOCK_DESTROY(cfg);
 COUNTER_ARRAY_FREE(cfg->base.stats.cnt, NAT64STATS);
 free(cfg->hosts_hash, M_NAT64LSN);
 free(cfg->aliases, M_NAT64LSN);
 free(cfg, M_NAT64LSN);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nat64lsn_cfg {int periodic; } ;


 int CALLOUT_LOCK (struct nat64lsn_cfg*) ;
 int CALLOUT_UNLOCK (struct nat64lsn_cfg*) ;
 int PERIODIC_DELAY ;
 int callout_reset (int *,int,int ,struct nat64lsn_cfg*) ;
 int hz ;
 int nat64lsn_periodic ;

void
nat64lsn_start_instance(struct nat64lsn_cfg *cfg)
{

 CALLOUT_LOCK(cfg);
 callout_reset(&cfg->periodic, hz * PERIODIC_DELAY,
     nat64lsn_periodic, cfg);
 CALLOUT_UNLOCK(cfg);
}

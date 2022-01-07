
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nptv6_cfg {int stats; } ;


 int COUNTER_ARRAY_FREE (int ,int ) ;
 int M_IPFW ;
 int NPTV6STATS ;
 int free (struct nptv6_cfg*,int ) ;

__attribute__((used)) static void
nptv6_free_config(struct nptv6_cfg *cfg)
{

 COUNTER_ARRAY_FREE(cfg->stats, NPTV6STATS);
 free(cfg, M_IPFW);
}

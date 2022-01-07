
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cnt; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;
struct nat64stl_cfg {TYPE_2__ base; } ;


 int COUNTER_ARRAY_FREE (int ,int ) ;
 int M_IPFW ;
 int NAT64STATS ;
 int free (struct nat64stl_cfg*,int ) ;

__attribute__((used)) static void
nat64stl_free_config(struct nat64stl_cfg *cfg)
{

 COUNTER_ARRAY_FREE(cfg->base.stats.cnt, NAT64STATS);
 free(cfg, M_IPFW);
}

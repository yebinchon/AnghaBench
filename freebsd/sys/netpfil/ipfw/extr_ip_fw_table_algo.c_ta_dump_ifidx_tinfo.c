
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct table_info {int dummy; } ;
struct iftable_cfg {int used; int size; } ;
struct ifidx {int dummy; } ;
struct TYPE_3__ {int itemsize4; int count4; int size4; int taclass4; } ;
typedef TYPE_1__ ipfw_ta_tinfo ;


 int IPFW_TACLASS_ARRAY ;

__attribute__((used)) static void
ta_dump_ifidx_tinfo(void *ta_state, struct table_info *ti, ipfw_ta_tinfo *tinfo)
{
 struct iftable_cfg *cfg;

 cfg = (struct iftable_cfg *)ta_state;

 tinfo->taclass4 = IPFW_TACLASS_ARRAY;
 tinfo->size4 = cfg->size;
 tinfo->count4 = cfg->used;
 tinfo->itemsize4 = sizeof(struct ifidx);
}

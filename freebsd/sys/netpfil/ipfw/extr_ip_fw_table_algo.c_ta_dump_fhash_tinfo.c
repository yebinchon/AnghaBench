
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct table_info {int dummy; } ;
struct fhashentry6 {int dummy; } ;
struct fhashentry4 {int dummy; } ;
struct fhash_cfg {int items; int size; } ;
struct TYPE_3__ {int itemsize4; int itemsize6; int count4; int size4; int taclass4; int flags; } ;
typedef TYPE_1__ ipfw_ta_tinfo ;


 int IPFW_TACLASS_HASH ;
 int IPFW_TATFLAGS_AFITEM ;

__attribute__((used)) static void
ta_dump_fhash_tinfo(void *ta_state, struct table_info *ti, ipfw_ta_tinfo *tinfo)
{
 struct fhash_cfg *cfg;

 cfg = (struct fhash_cfg *)ta_state;

 tinfo->flags = IPFW_TATFLAGS_AFITEM;
 tinfo->taclass4 = IPFW_TACLASS_HASH;
 tinfo->size4 = cfg->size;
 tinfo->count4 = cfg->items;
 tinfo->itemsize4 = sizeof(struct fhashentry4);
 tinfo->itemsize6 = sizeof(struct fhashentry6);
}

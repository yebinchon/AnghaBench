
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct statsblob_tpl {TYPE_2__* mb; TYPE_3__* sb; } ;
struct TYPE_7__ {int cursz; } ;
struct TYPE_6__ {void* tplhash; TYPE_1__* voi_meta; int * tplname; } ;
struct TYPE_5__ {int * name; } ;


 int NVOIS (TYPE_3__*) ;
 int TPL_LIST_WLOCK_ASSERT () ;
 void* hash32_buf (TYPE_3__*,int ,void*) ;
 void* hash32_str (int *,void*) ;

__attribute__((used)) static inline void
stats_tpl_update_hash(struct statsblob_tpl *tpl)
{

 TPL_LIST_WLOCK_ASSERT();
 tpl->mb->tplhash = hash32_str(tpl->mb->tplname, 0);
 for (int voi_id = 0; voi_id < NVOIS(tpl->sb); voi_id++) {
  if (tpl->mb->voi_meta[voi_id].name != ((void*)0))
   tpl->mb->tplhash = hash32_str(
       tpl->mb->voi_meta[voi_id].name, tpl->mb->tplhash);
 }
 tpl->mb->tplhash = hash32_buf(tpl->sb, tpl->sb->cursz,
     tpl->mb->tplhash);
}

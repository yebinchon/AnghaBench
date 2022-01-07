
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nr; struct cache_entry const** entries; } ;
struct submodule_update_clone {int quickstop; struct cache_entry const** failed_clones; TYPE_1__ list; scalar_t__ failed_clones_nr; int failed_clones_alloc; } ;
struct strbuf {int dummy; } ;
typedef struct cache_entry {int name; } const cache_entry ;


 int ALLOC_GROW (struct cache_entry const**,scalar_t__,int ) ;
 int _ (char*) ;
 int free (int*) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addf (struct strbuf*,int ,int ) ;

__attribute__((used)) static int update_clone_task_finished(int result,
          struct strbuf *err,
          void *suc_cb,
          void *idx_task_cb)
{
 const struct cache_entry *ce;
 struct submodule_update_clone *suc = suc_cb;

 int *idxP = idx_task_cb;
 int idx = *idxP;
 free(idxP);

 if (!result)
  return 0;

 if (idx < suc->list.nr) {
  ce = suc->list.entries[idx];
  strbuf_addf(err, _("Failed to clone '%s'. Retry scheduled"),
       ce->name);
  strbuf_addch(err, '\n');
  ALLOC_GROW(suc->failed_clones,
      suc->failed_clones_nr + 1,
      suc->failed_clones_alloc);
  suc->failed_clones[suc->failed_clones_nr++] = ce;
  return 0;
 } else {
  idx -= suc->list.nr;
  ce = suc->failed_clones[idx];
  strbuf_addf(err, _("Failed to clone '%s' a second time, aborting"),
       ce->name);
  strbuf_addch(err, '\n');
  suc->quickstop = 1;
  return 1;
 }

 return 0;
}

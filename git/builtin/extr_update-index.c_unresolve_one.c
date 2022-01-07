
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_entry {scalar_t__ ce_mode; int oid; int name; } ;


 int ADD_CACHE_OK_TO_ADD ;
 struct cache_entry** active_cache ;
 int active_nr ;
 scalar_t__ add_cache_entry (struct cache_entry*,int ) ;
 int cache_name_pos (char const*,int) ;
 int ce_namelen (struct cache_entry const*) ;
 scalar_t__ ce_stage (struct cache_entry const*) ;
 int discard_cache_entry (struct cache_entry*) ;
 int error (char*,char const*) ;
 int fprintf (int ,char*,char const*) ;
 int head_oid ;
 int memcmp (int ,char const*,int) ;
 int merge_head_oid ;
 scalar_t__ oideq (int *,int *) ;
 struct cache_entry* read_one_ent (char*,int *,char const*,int,int) ;
 int remove_file_from_cache (char const*) ;
 int stderr ;
 int strlen (char const*) ;
 int unmerge_cache_entry_at (int) ;

__attribute__((used)) static int unresolve_one(const char *path)
{
 int namelen = strlen(path);
 int pos;
 int ret = 0;
 struct cache_entry *ce_2 = ((void*)0), *ce_3 = ((void*)0);


 pos = cache_name_pos(path, namelen);
 if (0 <= pos) {

  pos = unmerge_cache_entry_at(pos);
  if (pos < active_nr) {
   const struct cache_entry *ce = active_cache[pos];
   if (ce_stage(ce) &&
       ce_namelen(ce) == namelen &&
       !memcmp(ce->name, path, namelen))
    return 0;
  }

 } else {




  pos = -pos-1;
  if (pos < active_nr) {
   const struct cache_entry *ce = active_cache[pos];
   if (ce_namelen(ce) == namelen &&
       !memcmp(ce->name, path, namelen)) {
    fprintf(stderr,
     "%s: skipping still unmerged path.\n",
     path);
    goto free_return;
   }
  }
 }





 ce_2 = read_one_ent("our", &head_oid, path, namelen, 2);
 ce_3 = read_one_ent("their", &merge_head_oid, path, namelen, 3);

 if (!ce_2 || !ce_3) {
  ret = -1;
  goto free_return;
 }
 if (oideq(&ce_2->oid, &ce_3->oid) &&
     ce_2->ce_mode == ce_3->ce_mode) {
  fprintf(stderr, "%s: identical in both, skipping.\n",
   path);
  goto free_return;
 }

 remove_file_from_cache(path);
 if (add_cache_entry(ce_2, ADD_CACHE_OK_TO_ADD)) {
  error("%s: cannot add our version to the index.", path);
  ret = -1;
  goto free_return;
 }
 if (!add_cache_entry(ce_3, ADD_CACHE_OK_TO_ADD))
  return 0;
 error("%s: cannot add their version to the index.", path);
 ret = -1;
 free_return:
 discard_cache_entry(ce_2);
 discard_cache_entry(ce_3);
 return ret;
}

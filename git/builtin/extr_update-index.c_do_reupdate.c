
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pathspec {int dummy; } ;
struct cache_entry {scalar_t__ ce_mode; int name; int oid; } ;


 int PATHSPEC_PREFER_CWD ;
 struct cache_entry** active_cache ;
 int active_nr ;
 int ce_namelen (struct cache_entry const*) ;
 int ce_path_match (int *,struct cache_entry const*,struct pathspec*,int *) ;
 scalar_t__ ce_stage (struct cache_entry const*) ;
 int clear_pathspec (struct pathspec*) ;
 int discard_cache_entry (struct cache_entry*) ;
 int free (char*) ;
 int head_oid ;
 scalar_t__ oideq (int *,int *) ;
 int parse_pathspec (struct pathspec*,int ,int ,char const*,char const**) ;
 struct cache_entry* read_one_ent (int *,int *,int ,int ,int ) ;
 scalar_t__ read_ref (char*,int *) ;
 int the_index ;
 int update_one (char*) ;
 char* xstrdup (int ) ;

__attribute__((used)) static int do_reupdate(int ac, const char **av,
         const char *prefix)
{



 int pos;
 int has_head = 1;
 struct pathspec pathspec;

 parse_pathspec(&pathspec, 0,
         PATHSPEC_PREFER_CWD,
         prefix, av + 1);

 if (read_ref("HEAD", &head_oid))



  has_head = 0;
 redo:
 for (pos = 0; pos < active_nr; pos++) {
  const struct cache_entry *ce = active_cache[pos];
  struct cache_entry *old = ((void*)0);
  int save_nr;
  char *path;

  if (ce_stage(ce) || !ce_path_match(&the_index, ce, &pathspec, ((void*)0)))
   continue;
  if (has_head)
   old = read_one_ent(((void*)0), &head_oid,
        ce->name, ce_namelen(ce), 0);
  if (old && ce->ce_mode == old->ce_mode &&
      oideq(&ce->oid, &old->oid)) {
   discard_cache_entry(old);
   continue;
  }




  save_nr = active_nr;
  path = xstrdup(ce->name);
  update_one(path);
  free(path);
  discard_cache_entry(old);
  if (save_nr != active_nr)
   goto redo;
 }
 clear_pathspec(&pathspec);
 return 0;
}

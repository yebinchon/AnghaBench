
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worktree {int path; } ;
struct strbuf {int buf; } ;
struct index_state {int cache_nr; struct cache_entry** cache; int * member_0; } ;
struct cache_entry {int name; int ce_mode; } ;


 struct strbuf STRBUF_INIT ;
 int S_ISGITLINK (int ) ;
 int _ (char*) ;
 int die (int ) ;
 int discard_index (struct index_state*) ;
 int get_worktree_git_dir (struct worktree const*) ;
 scalar_t__ is_directory (int ) ;
 int is_submodule_populated_gently (int ,int*) ;
 scalar_t__ read_index_from (struct index_state*,int ,int ) ;
 int strbuf_addf (struct strbuf*,char*,int ,int ) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 int worktree_git_path (struct worktree const*,char*) ;

__attribute__((used)) static void validate_no_submodules(const struct worktree *wt)
{
 struct index_state istate = { ((void*)0) };
 struct strbuf path = STRBUF_INIT;
 int i, found_submodules = 0;

 if (is_directory(worktree_git_path(wt, "modules"))) {





  found_submodules = 1;
 } else if (read_index_from(&istate, worktree_git_path(wt, "index"),
       get_worktree_git_dir(wt)) > 0) {
  for (i = 0; i < istate.cache_nr; i++) {
   struct cache_entry *ce = istate.cache[i];
   int err;

   if (!S_ISGITLINK(ce->ce_mode))
    continue;

   strbuf_reset(&path);
   strbuf_addf(&path, "%s/%s", wt->path, ce->name);
   if (!is_submodule_populated_gently(path.buf, &err))
    continue;

   found_submodules = 1;
   break;
  }
 }
 discard_index(&istate);
 strbuf_release(&path);

 if (found_submodules)
  die(_("working trees containing submodules cannot be moved or removed"));
}

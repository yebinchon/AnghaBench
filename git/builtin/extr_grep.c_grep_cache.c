
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct strbuf {int buf; int len; } ;
struct repository {TYPE_1__* index; scalar_t__ submodule_prefix; } ;
struct pathspec {int dummy; } ;
struct grep_opt {scalar_t__ status_only; struct repository* repo; } ;
struct cache_entry {int ce_flags; scalar_t__ name; int ce_mode; int oid; } ;
struct TYPE_3__ {int cache_nr; struct cache_entry** cache; } ;


 int CE_VALID ;
 struct strbuf STRBUF_INIT ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISGITLINK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int _ (char*) ;
 scalar_t__ ce_intent_to_add (struct cache_entry const*) ;
 scalar_t__ ce_skip_worktree (struct cache_entry const*) ;
 scalar_t__ ce_stage (struct cache_entry const*) ;
 int die (int ) ;
 int grep_file (struct grep_opt*,int ) ;
 int grep_oid (struct grep_opt*,int *,int ,int ,int ) ;
 int grep_submodule (struct grep_opt*,struct pathspec const*,int *,scalar_t__,scalar_t__,int) ;
 scalar_t__ match_pathspec (TYPE_1__*,struct pathspec const*,int ,int ,int ,int *,int) ;
 scalar_t__ recurse_submodules ;
 scalar_t__ repo_read_index (struct repository*) ;
 int strbuf_addstr (struct strbuf*,scalar_t__) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_setlen (struct strbuf*,int) ;
 int strcmp (scalar_t__,scalar_t__) ;
 int strlen (scalar_t__) ;
 scalar_t__ submodule_path_match (TYPE_1__*,struct pathspec const*,int ,int *) ;

__attribute__((used)) static int grep_cache(struct grep_opt *opt,
        const struct pathspec *pathspec, int cached)
{
 struct repository *repo = opt->repo;
 int hit = 0;
 int nr;
 struct strbuf name = STRBUF_INIT;
 int name_base_len = 0;
 if (repo->submodule_prefix) {
  name_base_len = strlen(repo->submodule_prefix);
  strbuf_addstr(&name, repo->submodule_prefix);
 }

 if (repo_read_index(repo) < 0)
  die(_("index file corrupt"));

 for (nr = 0; nr < repo->index->cache_nr; nr++) {
  const struct cache_entry *ce = repo->index->cache[nr];
  strbuf_setlen(&name, name_base_len);
  strbuf_addstr(&name, ce->name);

  if (S_ISREG(ce->ce_mode) &&
      match_pathspec(repo->index, pathspec, name.buf, name.len, 0, ((void*)0),
       S_ISDIR(ce->ce_mode) ||
       S_ISGITLINK(ce->ce_mode))) {





   if (cached || (ce->ce_flags & CE_VALID) ||
       ce_skip_worktree(ce)) {
    if (ce_stage(ce) || ce_intent_to_add(ce))
     continue;
    hit |= grep_oid(opt, &ce->oid, name.buf,
       0, name.buf);
   } else {
    hit |= grep_file(opt, name.buf);
   }
  } else if (recurse_submodules && S_ISGITLINK(ce->ce_mode) &&
      submodule_path_match(repo->index, pathspec, name.buf, ((void*)0))) {
   hit |= grep_submodule(opt, pathspec, ((void*)0), ce->name,
           ce->name, cached);
  } else {
   continue;
  }

  if (ce_stage(ce)) {
   do {
    nr++;
   } while (nr < repo->index->cache_nr &&
     !strcmp(ce->name, repo->index->cache[nr]->name));
   nr--;
  }
  if (hit && opt->status_only)
   break;
 }

 strbuf_release(&name);
 return hit;
}

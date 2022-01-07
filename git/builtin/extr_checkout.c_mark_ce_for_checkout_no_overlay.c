
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct checkout_opts {scalar_t__ source_tree; int pathspec; int ignore_skipworktree; } ;
struct cache_entry {int ce_flags; } ;


 int CE_MATCHED ;
 int CE_REMOVE ;
 int CE_UPDATE ;
 int CE_WT_REMOVE ;
 scalar_t__ ce_path_match (int *,struct cache_entry*,int *,char*) ;
 scalar_t__ ce_skip_worktree (struct cache_entry*) ;
 int the_index ;

__attribute__((used)) static void mark_ce_for_checkout_no_overlay(struct cache_entry *ce,
         char *ps_matched,
         const struct checkout_opts *opts)
{
 ce->ce_flags &= ~CE_MATCHED;
 if (!opts->ignore_skipworktree && ce_skip_worktree(ce))
  return;
 if (ce_path_match(&the_index, ce, &opts->pathspec, ps_matched)) {
  ce->ce_flags |= CE_MATCHED;
  if (opts->source_tree && !(ce->ce_flags & CE_UPDATE))





   ce->ce_flags |= CE_REMOVE | CE_WT_REMOVE;
 }
}

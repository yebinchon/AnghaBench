
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct cache_entry {int ce_mode; } ;
struct apply_state {TYPE_1__* repo; } ;
struct TYPE_2__ {int index; } ;


 int CE_MATCH_IGNORE_SKIP_WORKTREE ;
 int CE_MATCH_IGNORE_VALID ;
 int S_ISDIR (int ) ;
 scalar_t__ S_ISGITLINK (int ) ;
 int ie_match_stat (int ,struct cache_entry const*,struct stat*,int) ;

__attribute__((used)) static int verify_index_match(struct apply_state *state,
         const struct cache_entry *ce,
         struct stat *st)
{
 if (S_ISGITLINK(ce->ce_mode)) {
  if (!S_ISDIR(st->st_mode))
   return -1;
  return 0;
 }
 return ie_match_stat(state->repo->index, ce, st,
        CE_MATCH_IGNORE_VALID | CE_MATCH_IGNORE_SKIP_WORKTREE);
}

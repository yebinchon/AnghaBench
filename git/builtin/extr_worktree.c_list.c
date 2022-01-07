
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worktree {int dummy; } ;
struct option {int dummy; } ;


 int DEFAULT_ABBREV ;
 int GWT_SORT_LINKED ;
 int N_ (char*) ;
 struct option OPT_BOOL (int ,char*,int*,int ) ;
 struct option OPT_END () ;
 int free_worktrees (struct worktree**) ;
 struct worktree** get_worktrees (int ) ;
 int measure_widths (struct worktree**,int*,int*) ;
 int parse_options (int,char const**,char const*,struct option*,int ,int ) ;
 int show_worktree (struct worktree*,int,int) ;
 int show_worktree_porcelain (struct worktree*) ;
 int usage_with_options (int ,struct option*) ;
 int worktree_usage ;

__attribute__((used)) static int list(int ac, const char **av, const char *prefix)
{
 int porcelain = 0;

 struct option options[] = {
  OPT_BOOL(0, "porcelain", &porcelain, N_("machine-readable output")),
  OPT_END()
 };

 ac = parse_options(ac, av, prefix, options, worktree_usage, 0);
 if (ac)
  usage_with_options(worktree_usage, options);
 else {
  struct worktree **worktrees = get_worktrees(GWT_SORT_LINKED);
  int path_maxlen = 0, abbrev = DEFAULT_ABBREV, i;

  if (!porcelain)
   measure_widths(worktrees, &abbrev, &path_maxlen);

  for (i = 0; worktrees[i]; i++) {
   if (porcelain)
    show_worktree_porcelain(worktrees[i]);
   else
    show_worktree(worktrees[i], path_maxlen, abbrev);
  }
  free_worktrees(worktrees);
 }
 return 0;
}

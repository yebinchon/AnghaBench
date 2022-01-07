
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;


 struct option OPT_END () ;
 int add (int,char const**,char const*) ;
 int git_config (int ,int *) ;
 int git_worktree_config ;
 int list (int,char const**,char const*) ;
 int lock_worktree (int,char const**,char const*) ;
 int move_worktree (int,char const**,char const*) ;
 int prune (int,char const**,char const*) ;
 int remove_worktree (int,char const**,char const*) ;
 int strcmp (char const*,char*) ;
 int unlock_worktree (int,char const**,char const*) ;
 int usage_with_options (int ,struct option*) ;
 int worktree_usage ;

int cmd_worktree(int ac, const char **av, const char *prefix)
{
 struct option options[] = {
  OPT_END()
 };

 git_config(git_worktree_config, ((void*)0));

 if (ac < 2)
  usage_with_options(worktree_usage, options);
 if (!prefix)
  prefix = "";
 if (!strcmp(av[1], "add"))
  return add(ac - 1, av + 1, prefix);
 if (!strcmp(av[1], "prune"))
  return prune(ac - 1, av + 1, prefix);
 if (!strcmp(av[1], "list"))
  return list(ac - 1, av + 1, prefix);
 if (!strcmp(av[1], "lock"))
  return lock_worktree(ac - 1, av + 1, prefix);
 if (!strcmp(av[1], "unlock"))
  return unlock_worktree(ac - 1, av + 1, prefix);
 if (!strcmp(av[1], "move"))
  return move_worktree(ac - 1, av + 1, prefix);
 if (!strcmp(av[1], "remove"))
  return remove_worktree(ac - 1, av + 1, prefix);
 usage_with_options(worktree_usage, options);
}

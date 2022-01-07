
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;
struct commit {int dummy; } ;


 int ALLOC_ARRAY (struct commit**,int) ;
 int N_ (char*) ;
 struct option OPT_BOOL (char,char*,int*,int ) ;
 struct option OPT_CMDMODE (int ,char*,int*,int ,float) ;
 struct option OPT_END () ;
 int die (char*) ;
 struct commit* get_commit_reference (int ) ;
 int git_config (int ,int *) ;
 int git_default_config ;
 int handle_fork_point (int,char const**) ;
 int handle_independent (int,char const**) ;
 int handle_is_ancestor (int,char const**) ;
 int handle_octopus (int,char const**,int) ;
 int merge_base_usage ;
 int parse_options (int,char const**,char const*,struct option*,int ,int ) ;
 int show_merge_base (struct commit**,int,int) ;
 int usage_with_options (int ,struct option*) ;

int cmd_merge_base(int argc, const char **argv, const char *prefix)
{
 struct commit **rev;
 int rev_nr = 0;
 int show_all = 0;
 int cmdmode = 0;

 struct option options[] = {
  OPT_BOOL('a', "all", &show_all, N_("output all common ancestors")),
  OPT_CMDMODE(0, "octopus", &cmdmode,
       N_("find ancestors for a single n-way merge"), 'o'),
  OPT_CMDMODE(0, "independent", &cmdmode,
       N_("list revs not reachable from others"), 'r'),
  OPT_CMDMODE(0, "is-ancestor", &cmdmode,
       N_("is the first one ancestor of the other?"), 'a'),
  OPT_CMDMODE(0, "fork-point", &cmdmode,
       N_("find where <commit> forked from reflog of <ref>"), 'f'),
  OPT_END()
 };

 git_config(git_default_config, ((void*)0));
 argc = parse_options(argc, argv, prefix, options, merge_base_usage, 0);

 if (cmdmode == 'a') {
  if (argc < 2)
   usage_with_options(merge_base_usage, options);
  if (show_all)
   die("--is-ancestor cannot be used with --all");
  return handle_is_ancestor(argc, argv);
 }

 if (cmdmode == 'r' && show_all)
  die("--independent cannot be used with --all");

 if (cmdmode == 'o')
  return handle_octopus(argc, argv, show_all);

 if (cmdmode == 'r')
  return handle_independent(argc, argv);

 if (cmdmode == 'f') {
  if (argc < 1 || 2 < argc)
   usage_with_options(merge_base_usage, options);
  return handle_fork_point(argc, argv);
 }

 if (argc < 2)
  usage_with_options(merge_base_usage, options);

 ALLOC_ARRAY(rev, argc);
 while (argc-- > 0)
  rev[rev_nr++] = get_commit_reference(*argv++);
 return show_merge_base(rev, rev_nr, show_all);
}

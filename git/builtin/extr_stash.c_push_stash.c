
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pathspec {int dummy; } ;
struct option {int dummy; } ;


 int N_ (char*) ;
 struct option OPT_BOOL (unsigned char,char*,int*,int ) ;
 struct option OPT_END () ;
 struct option OPT_SET_INT (char,char*,int*,int ,int) ;
 struct option OPT_STRING (char,char*,char const**,int ,int ) ;
 struct option OPT__QUIET (int*,int ) ;
 int PATHSPEC_PREFER_FULL ;
 int PATHSPEC_PREFIX_ORIGIN ;
 int do_push_stash (struct pathspec*,char const*,int,int,int,int) ;
 int git_stash_push_usage ;
 int parse_options (int,char const**,char const*,struct option*,int ,int ) ;
 int parse_pathspec (struct pathspec*,int ,int,char const*,char const**) ;

__attribute__((used)) static int push_stash(int argc, const char **argv, const char *prefix)
{
 int keep_index = -1;
 int patch_mode = 0;
 int include_untracked = 0;
 int quiet = 0;
 const char *stash_msg = ((void*)0);
 struct pathspec ps;
 struct option options[] = {
  OPT_BOOL('k', "keep-index", &keep_index,
    N_("keep index")),
  OPT_BOOL('p', "patch", &patch_mode,
    N_("stash in patch mode")),
  OPT__QUIET(&quiet, N_("quiet mode")),
  OPT_BOOL('u', "include-untracked", &include_untracked,
    N_("include untracked files in stash")),
  OPT_SET_INT('a', "all", &include_untracked,
       N_("include ignore files"), 2),
  OPT_STRING('m', "message", &stash_msg, N_("message"),
      N_("stash message")),
  OPT_END()
 };

 if (argc)
  argc = parse_options(argc, argv, prefix, options,
         git_stash_push_usage,
         0);

 parse_pathspec(&ps, 0, PATHSPEC_PREFER_FULL | PATHSPEC_PREFIX_ORIGIN,
         prefix, argv);
 return do_push_stash(&ps, stash_msg, quiet, keep_index, patch_mode,
        include_untracked);
}

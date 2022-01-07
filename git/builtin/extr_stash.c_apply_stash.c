
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stash_info {int dummy; } ;
struct option {int dummy; } ;


 int N_ (char*) ;
 struct option OPT_BOOL (int ,char*,int*,int ) ;
 struct option OPT_END () ;
 struct option OPT__QUIET (int*,int ) ;
 int do_apply_stash (char const*,struct stash_info*,int,int) ;
 int free_stash_info (struct stash_info*) ;
 scalar_t__ get_stash_info (struct stash_info*,int,char const**) ;
 int git_stash_apply_usage ;
 int parse_options (int,char const**,char const*,struct option*,int ,int ) ;

__attribute__((used)) static int apply_stash(int argc, const char **argv, const char *prefix)
{
 int ret;
 int quiet = 0;
 int index = 0;
 struct stash_info info;
 struct option options[] = {
  OPT__QUIET(&quiet, N_("be quiet, only report errors")),
  OPT_BOOL(0, "index", &index,
    N_("attempt to recreate the index")),
  OPT_END()
 };

 argc = parse_options(argc, argv, prefix, options,
        git_stash_apply_usage, 0);

 if (get_stash_info(&info, argc, argv))
  return -1;

 ret = do_apply_stash(prefix, &info, index, quiet);
 free_stash_info(&info);
 return ret;
}

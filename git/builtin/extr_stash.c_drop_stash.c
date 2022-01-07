
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stash_info {int dummy; } ;
struct option {int dummy; } ;


 int N_ (char*) ;
 struct option OPT_END () ;
 struct option OPT__QUIET (int*,int ) ;
 int assert_stash_ref (struct stash_info*) ;
 int do_drop_stash (struct stash_info*,int) ;
 int free_stash_info (struct stash_info*) ;
 scalar_t__ get_stash_info (struct stash_info*,int,char const**) ;
 int git_stash_drop_usage ;
 int parse_options (int,char const**,char const*,struct option*,int ,int ) ;

__attribute__((used)) static int drop_stash(int argc, const char **argv, const char *prefix)
{
 int ret;
 int quiet = 0;
 struct stash_info info;
 struct option options[] = {
  OPT__QUIET(&quiet, N_("be quiet, only report errors")),
  OPT_END()
 };

 argc = parse_options(argc, argv, prefix, options,
        git_stash_drop_usage, 0);

 if (get_stash_info(&info, argc, argv))
  return -1;

 assert_stash_ref(&info);

 ret = do_drop_stash(&info, quiet);
 free_stash_info(&info);
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;


 struct option OPT_END () ;
 int PARSE_OPT_STOP_AT_NON_OPTION ;
 int _ (char*) ;
 int do_clear_stash () ;
 int error (int ) ;
 int git_stash_clear_usage ;
 int parse_options (int,char const**,char const*,struct option*,int ,int ) ;

__attribute__((used)) static int clear_stash(int argc, const char **argv, const char *prefix)
{
 struct option options[] = {
  OPT_END()
 };

 argc = parse_options(argc, argv, prefix, options,
        git_stash_clear_usage,
        PARSE_OPT_STOP_AT_NON_OPTION);

 if (argc)
  return error(_("git stash clear with parameters is "
          "unimplemented"));

 return do_clear_stash();
}

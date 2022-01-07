
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;


 int N_ (char*) ;
 struct option OPT_BOOL (char,char*,int*,int ) ;
 struct option OPT_END () ;
 int _ (char*) ;
 int builtin_remote_setbranches_usage ;
 int error (int ) ;
 int parse_options (int,char const**,int *,struct option*,int ,int ) ;
 int set_remote_branches (char const*,char const**,int) ;
 int usage_with_options (int ,struct option*) ;

__attribute__((used)) static int set_branches(int argc, const char **argv)
{
 int add_mode = 0;
 struct option options[] = {
  OPT_BOOL('\0', "add", &add_mode, N_("add branch")),
  OPT_END()
 };

 argc = parse_options(argc, argv, ((void*)0), options,
        builtin_remote_setbranches_usage, 0);
 if (argc == 0) {
  error(_("no remote specified"));
  usage_with_options(builtin_remote_setbranches_usage, options);
 }
 argv[argc] = ((void*)0);

 return set_remote_branches(argv[0], argv + 1, add_mode);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;


 int N_ (char*) ;
 struct option OPT_BOOL (char,char*,int*,int ) ;
 struct option OPT_END () ;
 struct option OPT_STRING (char,int *,char const**,int ,int ) ;
 struct option OPT__QUIET (int*,int ) ;
 int REF_NO_DEREF ;
 int check_symref (char const*,int,int,int) ;
 int create_symref (char const*,char const*,char const*) ;
 int delete_ref (int *,char const*,int *,int ) ;
 int die (char*,...) ;
 int git_config (int ,int *) ;
 int git_default_config ;
 int git_symbolic_ref_usage ;
 int parse_options (int,char const**,char const*,struct option*,int ,int ) ;
 int starts_with (char const*,char*) ;
 int strcmp (char const*,char*) ;
 int usage_with_options (int ,struct option*) ;

int cmd_symbolic_ref(int argc, const char **argv, const char *prefix)
{
 int quiet = 0, delete = 0, shorten = 0, ret = 0;
 const char *msg = ((void*)0);
 struct option options[] = {
  OPT__QUIET(&quiet,
   N_("suppress error message for non-symbolic (detached) refs")),
  OPT_BOOL('d', "delete", &delete, N_("delete symbolic ref")),
  OPT_BOOL(0, "short", &shorten, N_("shorten ref output")),
  OPT_STRING('m', ((void*)0), &msg, N_("reason"), N_("reason of the update")),
  OPT_END(),
 };

 git_config(git_default_config, ((void*)0));
 argc = parse_options(argc, argv, prefix, options,
        git_symbolic_ref_usage, 0);
 if (msg && !*msg)
  die("Refusing to perform update with empty message");

 if (delete) {
  if (argc != 1)
   usage_with_options(git_symbolic_ref_usage, options);
  ret = check_symref(argv[0], 1, 0, 0);
  if (ret)
   die("Cannot delete %s, not a symbolic ref", argv[0]);
  if (!strcmp(argv[0], "HEAD"))
   die("deleting '%s' is not allowed", argv[0]);
  return delete_ref(((void*)0), argv[0], ((void*)0), REF_NO_DEREF);
 }

 switch (argc) {
 case 1:
  ret = check_symref(argv[0], quiet, shorten, 1);
  break;
 case 2:
  if (!strcmp(argv[0], "HEAD") &&
      !starts_with(argv[1], "refs/"))
   die("Refusing to point HEAD outside of refs/");
  ret = !!create_symref(argv[0], argv[1], msg);
  break;
 default:
  usage_with_options(git_symbolic_ref_usage, options);
 }
 return ret;
}

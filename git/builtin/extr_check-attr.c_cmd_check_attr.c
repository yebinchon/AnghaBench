
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct git_attr {int dummy; } ;
struct attr_check {int dummy; } ;


 int GIT_ATTR_INDEX ;
 int PARSE_OPT_KEEP_DASHDASH ;
 scalar_t__ all_attrs ;
 struct attr_check* attr_check_alloc () ;
 int attr_check_append (struct attr_check*,struct git_attr const*) ;
 int attr_check_free (struct attr_check*) ;
 scalar_t__ cached_attrs ;
 int check_attr (char const*,struct attr_check*,scalar_t__,char const*) ;
 int check_attr_options ;
 int check_attr_stdin_paths (char const*,struct attr_check*,scalar_t__) ;
 int check_attr_usage ;
 int die (char*) ;
 int error (char*,char const*) ;
 int error_with_usage (char*) ;
 struct git_attr* git_attr (char const*) ;
 int git_attr_set_direction (int ) ;
 int git_config (int ,int *) ;
 int git_default_config ;
 int is_bare_repository () ;
 int maybe_flush_or_die (int ,char*) ;
 int parse_options (int,char const**,char const*,int ,int ,int ) ;
 scalar_t__ read_cache () ;
 int setup_work_tree () ;
 scalar_t__ stdin_paths ;
 int stdout ;
 int strcmp (char const*,char*) ;

int cmd_check_attr(int argc, const char **argv, const char *prefix)
{
 struct attr_check *check;
 int cnt, i, doubledash, filei;

 if (!is_bare_repository())
  setup_work_tree();

 git_config(git_default_config, ((void*)0));

 argc = parse_options(argc, argv, prefix, check_attr_options,
        check_attr_usage, PARSE_OPT_KEEP_DASHDASH);

 if (read_cache() < 0) {
  die("invalid cache");
 }

 if (cached_attrs)
  git_attr_set_direction(GIT_ATTR_INDEX);

 doubledash = -1;
 for (i = 0; doubledash < 0 && i < argc; i++) {
  if (!strcmp(argv[i], "--"))
   doubledash = i;
 }


 if (all_attrs) {
  if (doubledash >= 1)
   error_with_usage("Attributes and --all both specified");

  cnt = 0;
  filei = doubledash + 1;
 } else if (doubledash == 0) {
  error_with_usage("No attribute specified");
 } else if (doubledash < 0) {
  if (!argc)
   error_with_usage("No attribute specified");

  if (stdin_paths) {

   cnt = argc;
   filei = argc;
  } else {

   cnt = 1;
   filei = 1;
  }
 } else {
  cnt = doubledash;
  filei = doubledash + 1;
 }


 if (stdin_paths) {
  if (filei < argc)
   error_with_usage("Can't specify files with --stdin");
 } else {
  if (filei >= argc)
   error_with_usage("No file specified");
 }

 check = attr_check_alloc();
 if (!all_attrs) {
  for (i = 0; i < cnt; i++) {
   const struct git_attr *a = git_attr(argv[i]);

   if (!a)
    return error("%s: not a valid attribute name",
          argv[i]);
   attr_check_append(check, a);
  }
 }

 if (stdin_paths)
  check_attr_stdin_paths(prefix, check, all_attrs);
 else {
  for (i = filei; i < argc; i++)
   check_attr(prefix, check, all_attrs, argv[i]);
  maybe_flush_or_die(stdout, "attribute to stdout");
 }

 attr_check_free(check);
 return 0;
}

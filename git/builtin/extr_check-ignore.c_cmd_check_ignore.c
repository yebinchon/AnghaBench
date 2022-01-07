
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dir_struct {int dummy; } ;
typedef int dir ;


 int _ (char*) ;
 int check_ignore (struct dir_struct*,char const*,int,char const**) ;
 int check_ignore_options ;
 int check_ignore_stdin_paths (struct dir_struct*,char const*) ;
 int check_ignore_usage ;
 int clear_directory (struct dir_struct*) ;
 int die (int ) ;
 int git_config (int ,int *) ;
 int git_default_config ;
 int maybe_flush_or_die (int ,char*) ;
 int memset (struct dir_struct*,int ,int) ;
 int no_index ;
 scalar_t__ nul_term_line ;
 int parse_options (int,char const**,char const*,int ,int ,int ) ;
 scalar_t__ quiet ;
 scalar_t__ read_cache () ;
 int setup_standard_excludes (struct dir_struct*) ;
 scalar_t__ show_non_matching ;
 scalar_t__ stdin_paths ;
 int stdout ;
 scalar_t__ verbose ;

int cmd_check_ignore(int argc, const char **argv, const char *prefix)
{
 int num_ignored;
 struct dir_struct dir;

 git_config(git_default_config, ((void*)0));

 argc = parse_options(argc, argv, prefix, check_ignore_options,
        check_ignore_usage, 0);

 if (stdin_paths) {
  if (argc > 0)
   die(_("cannot specify pathnames with --stdin"));
 } else {
  if (nul_term_line)
   die(_("-z only makes sense with --stdin"));
  if (argc == 0)
   die(_("no path specified"));
 }
 if (quiet) {
  if (argc > 1)
   die(_("--quiet is only valid with a single pathname"));
  if (verbose)
   die(_("cannot have both --quiet and --verbose"));
 }
 if (show_non_matching && !verbose)
  die(_("--non-matching is only valid with --verbose"));


 if (!no_index && read_cache() < 0)
  die(_("index file corrupt"));

 memset(&dir, 0, sizeof(dir));
 setup_standard_excludes(&dir);

 if (stdin_paths) {
  num_ignored = check_ignore_stdin_paths(&dir, prefix);
 } else {
  num_ignored = check_ignore(&dir, prefix, argc, argv);
  maybe_flush_or_die(stdout, "ignore to stdout");
 }

 clear_directory(&dir);

 return !num_ignored;
}

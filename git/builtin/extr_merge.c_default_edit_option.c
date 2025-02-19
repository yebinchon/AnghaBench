
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_dev; scalar_t__ st_ino; scalar_t__ st_mode; } ;


 int _ (char*) ;
 int die (int ,char const*,char const*) ;
 int fstat (int,struct stat*) ;
 char* getenv (char const*) ;
 int git_parse_maybe_bool (char const*) ;
 scalar_t__ have_message ;
 scalar_t__ isatty (int) ;

__attribute__((used)) static int default_edit_option(void)
{
 static const char name[] = "GIT_MERGE_AUTOEDIT";
 const char *e = getenv(name);
 struct stat st_stdin, st_stdout;

 if (have_message)

  return 0;

 if (e) {
  int v = git_parse_maybe_bool(e);
  if (v < 0)
   die(_("Bad value '%s' in environment '%s'"), e, name);
  return v;
 }


 return (!fstat(0, &st_stdin) &&
  !fstat(1, &st_stdout) &&
  isatty(0) && isatty(1) &&
  st_stdin.st_dev == st_stdout.st_dev &&
  st_stdin.st_ino == st_stdout.st_ino &&
  st_stdin.st_mode == st_stdout.st_mode);
}

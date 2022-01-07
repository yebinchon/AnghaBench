
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGCHLD ;
 int SIG_DFL ;
 int die (char*,...) ;
 int err ;
 int merge_all () ;
 int merge_one_path (char const*) ;
 int one_shot ;
 char const* pgm ;
 int quiet ;
 int read_cache () ;
 int signal (int ,int ) ;
 int strcmp (char const*,char*) ;
 int usage (char*) ;

int cmd_merge_index(int argc, const char **argv, const char *prefix)
{
 int i, force_file = 0;




 signal(SIGCHLD, SIG_DFL);

 if (argc < 3)
  usage("git merge-index [-o] [-q] <merge-program> (-a | [--] [<filename>...])");

 read_cache();

 i = 1;
 if (!strcmp(argv[i], "-o")) {
  one_shot = 1;
  i++;
 }
 if (!strcmp(argv[i], "-q")) {
  quiet = 1;
  i++;
 }
 pgm = argv[i++];
 for (; i < argc; i++) {
  const char *arg = argv[i];
  if (!force_file && *arg == '-') {
   if (!strcmp(arg, "--")) {
    force_file = 1;
    continue;
   }
   if (!strcmp(arg, "-a")) {
    merge_all();
    continue;
   }
   die("git merge-index: unknown option %s", arg);
  }
  merge_one_path(arg);
 }
 if (err && !quiet)
  die("merge program failed");
 return err;
}

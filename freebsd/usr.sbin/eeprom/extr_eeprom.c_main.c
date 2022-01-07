
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUFSIZ ;
 int EX_NOINPUT ;
 int EX_OK ;
 int action (char*) ;
 int dump_config () ;
 int err (int ,char*) ;
 scalar_t__ ferror (int ) ;
 int * fgets (char*,int,int ) ;
 int getopt (int,char**,char*) ;
 scalar_t__ optind ;
 int stdin ;
 char* strrchr (char*,char) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 int do_stdin, opt;
 int aflag, rv;
 char *cp;
 char line[BUFSIZ];

 aflag = do_stdin = 0;
 rv = EX_OK;
 while ((opt = getopt(argc, argv, "-a")) != -1) {
  switch (opt) {
  case '-':
   if (aflag)
    usage();
   do_stdin = 1;
   break;
  case 'a':
   if (do_stdin)
    usage();
   aflag = 1;
   break;
  case '?':
  default:
   usage();

  }
 }
 argc -= optind;
 argv += optind;

 if (aflag) {
  if (argc != 0)
   usage();
  dump_config();
 } else {
  if (do_stdin) {
   while (fgets(line, BUFSIZ, stdin) != ((void*)0) &&
       rv == EX_OK) {
    if (line[0] == '\n')
     continue;
    if ((cp = strrchr(line, '\n')) != ((void*)0))
     *cp = '\0';
    rv = action(line);
   }
   if (ferror(stdin))
    err(EX_NOINPUT, "stdin");
  } else {
   if (argc == 0)
    usage();
   while (argc && rv == EX_OK) {
    rv = action(*argv);
    ++argv;
    --argc;
   }
  }
 }
 return (rv);
}

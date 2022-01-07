
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSUME_ALWAYS_YES ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int MAXPATHLEN ;
 int R_OK ;
 int X_OK ;
 char* _LOCALBASE ;
 int access (char const*,int ) ;
 scalar_t__ bootstrap_pkg (int) ;
 scalar_t__ bootstrap_pkg_local (char const*,int) ;
 int config_bool (int ,int*) ;
 int config_finish () ;
 int config_init () ;
 char* confirmation_message ;
 int errx (int,char*) ;
 int execv (char*,char**) ;
 int exit (int) ;
 int fileno (int ) ;
 int fprintf (int ,char*,...) ;
 char* getenv (char*) ;
 int isatty (int ) ;
 char* non_interactive_message ;
 scalar_t__ pkg_query_yes_no () ;
 int printf (char*,char*) ;
 int snprintf (char*,int,char*,char*) ;
 int stderr ;
 int stdin ;
 scalar_t__ strcmp (char*,char*) ;

int
main(int argc, char *argv[])
{
 char pkgpath[MAXPATHLEN];
 const char *pkgarg;
 int i;
 bool bootstrap_only, force, yes;

 bootstrap_only = 0;
 force = 0;
 pkgarg = ((void*)0);
 yes = 0;

 snprintf(pkgpath, MAXPATHLEN, "%s/sbin/pkg",
     getenv("LOCALBASE") ? getenv("LOCALBASE") : _LOCALBASE);

 if (argc > 1 && strcmp(argv[1], "bootstrap") == 0) {
  bootstrap_only = 1;
  if (argc == 3 && strcmp(argv[2], "-f") == 0)
   force = 1;
 }

 if ((bootstrap_only && force) || access(pkgpath, X_OK) == -1) {





  if (argv[1] != ((void*)0) && strcmp(argv[1], "-N") == 0)
   errx(EXIT_FAILURE, "pkg is not installed");

  config_init();

  if (argc > 1 && strcmp(argv[1], "add") == 0) {
   if (argc > 2 && strcmp(argv[2], "-f") == 0) {
    force = 1;
    pkgarg = argv[3];
   } else
    pkgarg = argv[2];
   if (pkgarg == ((void*)0)) {
    fprintf(stderr, "Path to pkg.txz required\n");
    exit(EXIT_FAILURE);
   }
   if (access(pkgarg, R_OK) == -1) {
    fprintf(stderr, "No such file: %s\n", pkgarg);
    exit(EXIT_FAILURE);
   }
   if (bootstrap_pkg_local(pkgarg, force) != 0)
    exit(EXIT_FAILURE);
   exit(EXIT_SUCCESS);
  }





  config_bool(ASSUME_ALWAYS_YES, &yes);
  if (!yes) {
   for (i = 1; i < argc; i++) {
    if (strcmp(argv[i], "-y") == 0 ||
        strcmp(argv[i], "--yes") == 0) {
     yes = 1;
     break;
    }
   }
  }
  if (!yes) {
   if (!isatty(fileno(stdin))) {
    fprintf(stderr, non_interactive_message);
    exit(EXIT_FAILURE);
   }

   printf("%s", confirmation_message);
   if (pkg_query_yes_no() == 0)
    exit(EXIT_FAILURE);
  }
  if (bootstrap_pkg(force) != 0)
   exit(EXIT_FAILURE);
  config_finish();

  if (bootstrap_only)
   exit(EXIT_SUCCESS);
 } else if (bootstrap_only) {
  printf("pkg already bootstrapped at %s\n", pkgpath);
  exit(EXIT_SUCCESS);
 }

 execv(pkgpath, argv);


 return (EXIT_FAILURE);
}

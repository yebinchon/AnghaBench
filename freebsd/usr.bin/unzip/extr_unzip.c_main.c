
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STDOUT_FILENO ;
 int Z1_opt ;
 int add_pattern (int *,char*) ;
 int debug (char*,char*,char) ;
 int errorx (char*) ;
 int exit (int) ;
 int * getenv (char*) ;
 int getopts (int,char**) ;
 int include ;
 scalar_t__ isatty (int ) ;
 int n_opt ;
 int o_opt ;
 int printf (char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int tty ;
 int u_opt ;
 int unzip (char const*) ;
 int unzip_debug ;
 int usage () ;
 scalar_t__ zipinfo_mode ;

int
main(int argc, char *argv[])
{
 const char *zipfile;
 int nopts;

 if (isatty(STDOUT_FILENO))
  tty = 1;

 if (getenv("UNZIP_DEBUG") != ((void*)0))
  unzip_debug = 1;
 for (int i = 0; i < argc; ++i)
  debug("%s%c", argv[i], (i < argc - 1) ? ' ' : '\n');







 nopts = getopts(argc, argv);





 if (zipinfo_mode && !Z1_opt) {
  printf("Zipinfo mode needs additional options\n");
  exit(1);
 }

 if (argc <= nopts)
  usage();
 zipfile = argv[nopts++];

 if (strcmp(zipfile, "-") == 0)
  zipfile = ((void*)0);

 while (nopts < argc && *argv[nopts] != '-')
  add_pattern(&include, argv[nopts++]);

 nopts--;
 nopts += getopts(argc - nopts, argv + nopts);

 if (n_opt + o_opt + u_opt > 1)
  errorx("-n, -o and -u are contradictory");

 unzip(zipfile);

 exit(0);
}

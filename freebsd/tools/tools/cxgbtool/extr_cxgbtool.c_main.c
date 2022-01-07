
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* COPYRIGHT ;
 char* PROGNAME ;
 char* VERSION ;
 int exit (int ) ;
 int printf (char*,char*,...) ;
 char* progname ;
 int run_cmd (int,char**,char const*) ;
 int run_cmd_loop (int,char**,char const*) ;
 int stderr ;
 int stdout ;
 int strcmp (char*,char*) ;
 int usage (int ) ;

int
main(int argc, char *argv[])
{
 int r = -1;
 const char *iff_name;

 progname = argv[0];

 if (argc == 2) {
  if (!strcmp(argv[1], "-h") || !strcmp(argv[1], "--help"))
   usage(stdout);
  if (!strcmp(argv[1], "-v") || !strcmp(argv[1], "--version")) {
   printf("%s version %s\n", PROGNAME, VERSION);
   printf("%s\n", COPYRIGHT);
   exit(0);
  }
 }

 if (argc < 3) usage(stderr);

 iff_name = argv[1];

 if (argc == 3 && !strcmp(argv[2], "stdio"))
  r = run_cmd_loop(argc, argv, iff_name);
 else
  r = run_cmd(argc, argv, iff_name);

 return (r);
}

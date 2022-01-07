
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int atoi (char*) ;
 int blank_env (char*) ;
 char** calloc (int,int) ;
 int dump_environ () ;
 char** environ ;
 int exit (int ) ;
 char* getenv (char*) ;
 char getopt (int,char**,char*) ;
 char* optarg ;
 size_t optind ;
 int print_rtrn_errno (int ,char const*) ;
 int printf (char*,...) ;
 int putenv (char*) ;
 int setenv (char*,char*,int ) ;
 int unsetenv (char*) ;
 int usage (char*) ;

int
main(int argc, char **argv)
{
 char arg;
 const char *eol = "\n";
 const char *value;
 static char *emptyEnv[] = { ((void*)0) };
 static char *staticEnv[] = { "FOO=bar", ((void*)0) };

 if (argc == 1) {
  usage(argv[0]);
  exit(EXIT_FAILURE);
 }


 while ((arg = getopt(argc, argv, "DGS:Ub:c:g:hp:rs:tu:")) != -1) {
  switch (arg) {
  case 'b':
   blank_env(optarg);
   break;

  case 'c':
   switch (atoi(optarg)) {
   case 1:
    environ = ((void*)0);
    break;

   case 2:
    environ[0] = ((void*)0);
    break;

   case 3:
    environ = calloc(1, sizeof(*environ));
    break;

   case 4:
    environ = emptyEnv;
    break;
   }
   break;

  case 'D':
   dump_environ();
   break;

  case 'G':
  case 'g':
   value = getenv(arg == 'g' ? optarg : ((void*)0));
   printf("%s%s", value == ((void*)0) ? "*NULL*" : value, eol);
   break;

  case 'p':
   print_rtrn_errno(putenv(optarg), eol);
   break;

  case 'r':
   environ = staticEnv;
   break;

  case 'S':
   print_rtrn_errno(setenv(((void*)0), optarg,
       atoi(argv[optind])), eol);
   optind += 1;
   break;

  case 's':
   print_rtrn_errno(setenv(optarg, argv[optind],
       atoi(argv[optind + 1])), eol);
   optind += 2;
   break;

  case 't':
   eol = " ";
   break;

  case 'U':
  case 'u':
   print_rtrn_errno(unsetenv(arg == 'u' ? optarg : ((void*)0)),
       eol);
   break;

  case 'h':
  default:
   usage(argv[0]);
   exit(EXIT_FAILURE);
  }
 }


 if (eol[0] == ' ')
  printf("\n");

 return (EXIT_SUCCESS);
}

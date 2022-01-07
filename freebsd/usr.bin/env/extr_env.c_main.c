
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ENOENT ;
 int EXIT_CANCELED ;
 int EXIT_CANNOT_INVOKE ;
 int EXIT_ENOENT ;
 int EXIT_FAILURE ;
 int env_verbosity ;
 char** environ ;
 int err (int ,char*,char*) ;
 scalar_t__ errno ;
 int errx (int ,char*) ;
 int execvp (char*,char**) ;
 int exit (int ) ;
 int fprintf (int ,char*,...) ;
 int getopt (int,char**,char*) ;
 char* optarg ;
 int optind ;
 int printf (char*,char*,char) ;
 int search_paths (char*,char**) ;
 int setenv (char*,char*,int) ;
 int sleep (int) ;
 int split_spaces (char*,int *,int*,char***) ;
 int stderr ;
 char* strchr (char*,char) ;
 char* strdup (char*) ;
 int unsetenv (char*) ;
 int usage () ;

int
main(int argc, char **argv)
{
 char *altpath, **ep, *p, **parg, term;
 char *cleanenv[1];
 int ch, want_clear;
 int rtrn;

 altpath = ((void*)0);
 want_clear = 0;
 term = '\n';
 while ((ch = getopt(argc, argv, "-0iP:S:u:v")) != -1)
  switch(ch) {
  case '-':
  case 'i':
   want_clear = 1;
   break;
  case '0':
   term = '\0';
   break;
  case 'P':
   altpath = strdup(optarg);
   break;
  case 'S':




   split_spaces(optarg, &optind, &argc, &argv);
   break;
  case 'u':
   if (env_verbosity)
    fprintf(stderr, "#env unset:\t%s\n", optarg);
   rtrn = unsetenv(optarg);
   if (rtrn == -1)
    err(EXIT_FAILURE, "unsetenv %s", optarg);
   break;
  case 'v':
   env_verbosity++;
   if (env_verbosity > 1)
    fprintf(stderr, "#env verbosity now at %d\n",
        env_verbosity);
   break;
  case '?':
  default:
   usage();
  }
 if (want_clear) {
  environ = cleanenv;
  cleanenv[0] = ((void*)0);
  if (env_verbosity)
   fprintf(stderr, "#env clearing environ\n");
 }
 for (argv += optind; *argv && (p = strchr(*argv, '=')); ++argv) {
  if (env_verbosity)
   fprintf(stderr, "#env setenv:\t%s\n", *argv);
  *p = '\0';
  rtrn = setenv(*argv, p + 1, 1);
  *p = '=';
  if (rtrn == -1)
   err(EXIT_FAILURE, "setenv %s", *argv);
 }
 if (*argv) {
  if (term == '\0')
   errx(EXIT_CANCELED, "cannot specify command with -0");
  if (altpath)
   search_paths(altpath, argv);
  if (env_verbosity) {
   fprintf(stderr, "#env executing:\t%s\n", *argv);
   for (parg = argv, argc = 0; *parg; parg++, argc++)
    fprintf(stderr, "#env    arg[%d]=\t'%s'\n",
        argc, *parg);
   if (env_verbosity > 1)
    sleep(1);
  }
  execvp(*argv, argv);
  err(errno == ENOENT ? EXIT_ENOENT : EXIT_CANNOT_INVOKE,
      "%s", *argv);
 }
 for (ep = environ; *ep; ep++)
  (void)printf("%s%c", *ep, term);
 exit(0);
}

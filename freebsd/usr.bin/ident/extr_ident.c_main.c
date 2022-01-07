
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int CAPH_READ ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int O_RDONLY ;
 int STDIN_FILENO ;
 scalar_t__ caph_enter () ;
 scalar_t__ caph_limit_stdio () ;
 scalar_t__ caph_limit_stream (int,int ) ;
 int err (int,char*,...) ;
 int errx (int,char*,int ) ;
 int fclose (int *) ;
 int * fdopen (int,char*) ;
 int getopt (int,char**,char*) ;
 int getprogname () ;
 int* malloc (int) ;
 int open (char*,int ) ;
 scalar_t__ optind ;
 int scan (int *,char*,int) ;
 int warn (char*,char*) ;

int
main(int argc, char **argv)
{
 bool quiet = 0;
 int ch, i, *fds, fd;
 int ret = EXIT_SUCCESS;
 size_t nfds;
 FILE *fp;

 while ((ch = getopt(argc, argv, "qV")) != -1) {
  switch (ch) {
  case 'q':
   quiet = 1;
   break;
  case 'V':

   return (EXIT_SUCCESS);
  default:
   errx(EXIT_FAILURE, "usage: %s [-q] [-V] [file...]",
       getprogname());
  }
 }

 argc -= optind;
 argv += optind;

 if (caph_limit_stdio() < 0)
  err(EXIT_FAILURE, "unable to limit stdio");

 if (argc == 0) {
  nfds = 1;
  fds = malloc(sizeof(*fds));
  if (fds == ((void*)0))
   err(EXIT_FAILURE, "unable to allocate fds array");
  fds[0] = STDIN_FILENO;
 } else {
  nfds = argc;
  fds = malloc(sizeof(*fds) * nfds);
  if (fds == ((void*)0))
   err(EXIT_FAILURE, "unable to allocate fds array");

  for (i = 0; i < argc; i++) {
   fds[i] = fd = open(argv[i], O_RDONLY);
   if (fd < 0) {
    warn("%s", argv[i]);
    ret = EXIT_FAILURE;
    continue;
   }
   if (caph_limit_stream(fd, CAPH_READ) < 0)
    err(EXIT_FAILURE,
        "unable to limit fcntls/rights for %s",
        argv[i]);
  }
 }


 if (caph_enter() < 0)
  err(EXIT_FAILURE, "unable to enter capability mode");

 for (i = 0; i < (int)nfds; i++) {
  if (fds[i] < 0)
   continue;

  fp = fdopen(fds[i], "r");
  if (fp == ((void*)0)) {
   warn("%s", argv[i]);
   ret = EXIT_FAILURE;
   continue;
  }
  if (scan(fp, argc == 0 ? ((void*)0) : argv[i], quiet) != EXIT_SUCCESS)
   ret = EXIT_FAILURE;
  fclose(fp);
 }

 return (ret);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ENOENT ;
 int EXIT_MISC ;
 int EXIT_NOEXEC ;
 int EXIT_NOTFOUND ;
 int SIGHUP ;
 int SIG_IGN ;
 int STDERR_FILENO ;
 int STDOUT_FILENO ;
 int dofile () ;
 int dup2 (int ,int ) ;
 int err (int,char*,char*) ;
 scalar_t__ errno ;
 int execvp (char*,char**) ;
 int getopt (int,char**,char*) ;
 scalar_t__ isatty (int ) ;
 scalar_t__ optind ;
 int signal (int ,int ) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 int exit_status;

 while (getopt(argc, argv, "") != -1)
  usage();
 argc -= optind;
 argv += optind;
 if (argc < 1)
  usage();

 if (isatty(STDOUT_FILENO))
  dofile();
 if (isatty(STDERR_FILENO) && dup2(STDOUT_FILENO, STDERR_FILENO) == -1)

  err(EXIT_MISC, "%s", argv[0]);

 (void)signal(SIGHUP, SIG_IGN);

 execvp(*argv, argv);
 exit_status = (errno == ENOENT) ? EXIT_NOTFOUND : EXIT_NOEXEC;
 err(exit_status, "%s", argv[0]);
}

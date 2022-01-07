
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int O_RDONLY ;
 int STDIN_FILENO ;
 int _PATH_DEVNULL ;
 int _PATH_TTY ;
 int _exit (int) ;
 scalar_t__ childerr ;
 int close (int) ;
 int dup2 (int,int) ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int execvp (char*,char**) ;
 int fflush (int ) ;
 int fprintf (int ,char*,...) ;
 int oflag ;
 int open (int ,int ) ;
 scalar_t__ pflag ;
 int pids_add (int ) ;
 int prompt () ;
 int stderr ;
 scalar_t__ tflag ;
 int vfork () ;
 int waitchildren (char*,int ) ;
 int warn (char*) ;
 int xexit (char*,int) ;

__attribute__((used)) static void
run(char **argv)
{
 pid_t pid;
 int fd;
 char **avec;






 if (tflag || pflag) {
  (void)fprintf(stderr, "%s", *argv);
  for (avec = argv + 1; *avec != ((void*)0); ++avec)
   (void)fprintf(stderr, " %s", *avec);



  if (pflag)






   switch (prompt()) {
   case 0:
    return;
   case 1:
    goto exec;
   case 2:
    break;
   }
  (void)fprintf(stderr, "\n");
  (void)fflush(stderr);
 }
exec:
 childerr = 0;
 switch (pid = vfork()) {
 case -1:
  warn("vfork");
  xexit(*argv, 1);
 case 0:
  if (oflag) {
   if ((fd = open(_PATH_TTY, O_RDONLY)) == -1)
    err(1, "can't open /dev/tty");
  } else {
   fd = open(_PATH_DEVNULL, O_RDONLY);
  }
  if (fd > STDIN_FILENO) {
   if (dup2(fd, STDIN_FILENO) != 0)
    err(1, "can't dup2 to stdin");
   close(fd);
  }
  execvp(argv[0], argv);
  childerr = errno;
  _exit(1);
 }
 pids_add(pid);
 waitchildren(*argv, 0);
}

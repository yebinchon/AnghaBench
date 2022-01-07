
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int WEXITSTATUS (int) ;
 int _exit (int) ;
 int errx (int,char*,int) ;
 int execlp (char*,char*,char*,char*,char*) ;
 int fflush (int *) ;
 int fork () ;
 int waitpid (int,int*,int ) ;
 int warn (char*) ;

int
nis_update(void) {
 pid_t pid;
 int i;

 fflush(((void*)0));
 if ((pid = fork()) == -1) {
  warn("fork()");
  return (1);
 }
 if (pid == 0) {
  execlp("/usr/bin/make", "make", "-C", "/var/yp/", (char*) ((void*)0));
  _exit(1);
 }
 waitpid(pid, &i, 0);
 if ((i = WEXITSTATUS(i)) != 0)
  errx(i, "make exited with status %d", i);
 return (i);
}

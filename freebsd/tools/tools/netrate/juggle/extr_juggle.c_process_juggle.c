
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
typedef scalar_t__ pid_t ;


 int CLOCK_REALTIME ;
 int NUMCYCLES ;
 int SIGTERM ;
 scalar_t__ clock_gettime (int ,struct timespec*) ;
 int err (int,char*) ;
 int errno ;
 int errx (int,char*) ;
 int exit (int ) ;
 scalar_t__ fork () ;
 scalar_t__ getpid () ;
 int kill (scalar_t__,int ) ;
 scalar_t__ message_recv (int) ;
 scalar_t__ message_send (int) ;
 int timespecsub (struct timespec*,struct timespec*,struct timespec*) ;
 scalar_t__ waitpid (scalar_t__,int *,int ) ;

__attribute__((used)) static struct timespec
process_juggle(int fd1, int fd2, int pipeline)
{
 struct timespec tstart, tfinish;
 pid_t pid, ppid, wpid;
 int error, i, j;

 ppid = getpid();

 pid = fork();
 if (pid < 0)
  err(-1, "process_juggle: fork");

 if (pid == 0) {
  if (message_send(fd2) < 0) {
   error = errno;
   kill(ppid, SIGTERM);
   errno = error;
   err(-1, "process_juggle: child: message_send");
  }

  for (i = 0; i < NUMCYCLES; i++) {
   for (j = 0; j < pipeline; j++) {
    if (message_send(fd2) < 0)
     err(-1, "message_send fd2");

    if (message_recv(fd2) < 0)
     err(-1, "message_recv fd2");
   }
  }

  exit(0);
 } else {
  if (message_recv(fd1) < 0) {
   error = errno;
   kill(pid, SIGTERM);
   errno = error;
   err(-1, "process_juggle: parent: message_recv");
  }

  if (clock_gettime(CLOCK_REALTIME, &tstart) < 0)
   err(-1, "process_juggle: clock_gettime");

  for (i = 0; i < NUMCYCLES; i++) {
   for (j = 0; j < pipeline; j++) {
    if (message_send(fd1) < 0) {
     error = errno;
     kill(pid, SIGTERM);
     errno = error;
     err(-1, "message_send fd1");
    }
   }

   for (j = 0; j < pipeline; j++) {
    if (message_recv(fd1) < 0) {
     error = errno;
     kill(pid, SIGTERM);
     errno = error;
     err(-1, "message_recv fd1");
    }
   }
  }

  if (clock_gettime(CLOCK_REALTIME, &tfinish) < 0)
   err(-1, "process_juggle: clock_gettime");
 }

 wpid = waitpid(pid, ((void*)0), 0);
 if (wpid < 0)
  err(-1, "process_juggle: waitpid");
 if (wpid != pid)
  errx(-1, "process_juggle: waitpid: pid != wpid");

 timespecsub(&tfinish, &tstart, &tfinish);

 return (tfinish);
}

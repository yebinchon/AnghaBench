
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int CHECK (int) ;
 scalar_t__ EFAULT ;
 scalar_t__ cap_enter () ;
 scalar_t__ cap_getmode (unsigned int*) ;
 int close (int) ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int exit (int ) ;
 int fork () ;
 int pdfork (int*,int ) ;
 int pdwait (int) ;
 int printf (char*) ;
 int sleep (int) ;
 int waitpid (int,int *,int ) ;

int
main(void)
{
 unsigned int mode;
 pid_t pid;
 int pfd;

 printf("1..27\n");

 mode = 666;
 CHECK(cap_getmode(&mode) == 0);

 CHECK(mode != 666);

 CHECK(mode == 0);


 errno = 0;
 CHECK(cap_getmode(((void*)0)) == -1);
 CHECK(errno == EFAULT);
 errno = 0;
 CHECK(cap_getmode((void *)(uintptr_t)0xdeadc0de) == -1);
 CHECK(errno == EFAULT);


 pid = fork();
 switch (pid) {
 case -1:
  err(1, "fork() failed");
 case 0:
  mode = 666;
  CHECK(cap_getmode(&mode) == 0);

  CHECK(mode != 666);

  CHECK(mode == 0);
  exit(0);
 default:
  if (waitpid(pid, ((void*)0), 0) == -1)
   err(1, "waitpid() failed");
 }


 pid = pdfork(&pfd, 0);
 switch (pid) {
 case -1:
  err(1, "pdfork() failed");
 case 0:
  mode = 666;
  CHECK(cap_getmode(&mode) == 0);

  CHECK(mode != 666);

  CHECK(mode == 0);
  exit(0);
 default:
  if (pdwait(pfd) == -1)
   err(1, "pdwait() failed");
  close(pfd);
 }



 CHECK(cap_enter() == 0);

 mode = 666;
 CHECK(cap_getmode(&mode) == 0);

 CHECK(mode != 666);

 CHECK(mode == 1);


 errno = 0;
 CHECK(cap_getmode(((void*)0)) == -1);
 CHECK(errno == EFAULT);
 errno = 0;
 CHECK(cap_getmode((void *)(uintptr_t)0xdeadc0de) == -1);
 CHECK(errno == EFAULT);


 pid = fork();
 switch (pid) {
 case -1:
  err(1, "fork() failed");
 case 0:
  mode = 666;
  CHECK(cap_getmode(&mode) == 0);

  CHECK(mode != 666);

  CHECK(mode == 1);
  exit(0);
 default:




  sleep(1);
 }


 pid = pdfork(&pfd, 0);
 switch (pid) {
 case -1:
  err(1, "pdfork() failed");
 case 0:
  mode = 666;
  CHECK(cap_getmode(&mode) == 0);

  CHECK(mode != 666);

  CHECK(mode == 1);
  exit(0);
 default:
  if (pdwait(pfd) == -1)
   err(1, "pdwait() failed");
  close(pfd);
 }

 exit(0);
}

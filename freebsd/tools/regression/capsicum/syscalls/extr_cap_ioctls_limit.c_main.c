
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int AF_UNIX ;
 int CHECK (int) ;
 int SOCK_STREAM ;
 scalar_t__ close (int) ;
 int err (int,char*) ;
 int exit (int ) ;
 int fork () ;
 int ioctl_tests_0 (int) ;
 int ioctl_tests_1 (int) ;
 int ioctl_tests_2 (int) ;
 int ioctl_tests_recv_0 (int) ;
 int ioctl_tests_send_0 (int) ;
 int pdfork (int*,int ) ;
 int pdwait (int) ;
 int printf (char*) ;
 int sleep (int) ;
 int socket (int ,int ,int ) ;
 scalar_t__ socketpair (int ,int ,int ,int*) ;
 int waitpid (int,int *,int ) ;

int
main(void)
{
 int fd, pfd, sp[2];
 pid_t pid;

 printf("1..607\n");

 CHECK((fd = socket(AF_UNIX, SOCK_STREAM, 0)) >= 0);
 ioctl_tests_0(fd);
 CHECK(close(fd) == 0);

 CHECK((fd = socket(AF_UNIX, SOCK_STREAM, 0)) >= 0);
 ioctl_tests_1(fd);
 CHECK(close(fd) == 0);

 CHECK((fd = socket(AF_UNIX, SOCK_STREAM, 0)) >= 0);
 ioctl_tests_2(fd);
 CHECK(close(fd) == 0);


 CHECK((fd = socket(AF_UNIX, SOCK_STREAM, 0)) >= 0);
 pid = fork();
 switch (pid) {
 case -1:
  err(1, "fork() failed");
 case 0:
  ioctl_tests_0(fd);
  CHECK(close(fd) == 0);
  exit(0);
 default:
  if (waitpid(pid, ((void*)0), 0) == -1)
   err(1, "waitpid() failed");
  ioctl_tests_0(fd);
 }
 CHECK(close(fd) == 0);


 CHECK((fd = socket(AF_UNIX, SOCK_STREAM, 0)) >= 0);
 pid = fork();
 switch (pid) {
 case -1:
  err(1, "fork() failed");
 case 0:
  sleep(1);
  ioctl_tests_0(fd);
  CHECK(close(fd) == 0);
  exit(0);
 default:
  ioctl_tests_0(fd);
  if (waitpid(pid, ((void*)0), 0) == -1)
   err(1, "waitpid() failed");
 }
 CHECK(close(fd) == 0);


 CHECK((fd = socket(AF_UNIX, SOCK_STREAM, 0)) >= 0);
 pid = pdfork(&pfd, 0);
 switch (pid) {
 case -1:
  err(1, "pdfork() failed");
 case 0:
  ioctl_tests_1(fd);
  exit(0);
 default:
  if (pdwait(pfd) == -1)
   err(1, "pdwait() failed");
  close(pfd);
  ioctl_tests_1(fd);
 }
 CHECK(close(fd) == 0);


 CHECK((fd = socket(AF_UNIX, SOCK_STREAM, 0)) >= 0);
 pid = pdfork(&pfd, 0);
 switch (pid) {
 case -1:
  err(1, "pdfork() failed");
 case 0:
  sleep(1);
  ioctl_tests_1(fd);
  exit(0);
 default:
  ioctl_tests_1(fd);
  if (pdwait(pfd) == -1)
   err(1, "pdwait() failed");
  close(pfd);
 }
 CHECK(close(fd) == 0);


 CHECK((fd = socket(AF_UNIX, SOCK_STREAM, 0)) >= 0);
 pid = fork();
 switch (pid) {
 case -1:
  err(1, "fork() failed");
 case 0:
  ioctl_tests_2(fd);
  exit(0);
 default:
  if (waitpid(pid, ((void*)0), 0) == -1)
   err(1, "waitpid() failed");
  ioctl_tests_2(fd);
 }
 CHECK(close(fd) == 0);


 CHECK((fd = socket(AF_UNIX, SOCK_STREAM, 0)) >= 0);
 pid = fork();
 switch (pid) {
 case -1:
  err(1, "fork() failed");
 case 0:
  sleep(1);
  ioctl_tests_2(fd);
  exit(0);
 default:
  ioctl_tests_2(fd);
  if (waitpid(pid, ((void*)0), 0) == -1)
   err(1, "waitpid() failed");
 }
 CHECK(close(fd) == 0);


 CHECK(socketpair(AF_UNIX, SOCK_STREAM, 0, sp) == 0);
 CHECK((pid = fork()) >= 0);
 if (pid == 0) {
  CHECK(close(sp[0]) == 0);
  ioctl_tests_recv_0(sp[1]);
  CHECK(close(sp[1]) == 0);
  exit(0);
 } else {
  CHECK(close(sp[1]) == 0);
  ioctl_tests_send_0(sp[0]);
  CHECK(waitpid(pid, ((void*)0), 0) == pid);
  CHECK(close(sp[0]) == 0);
 }


 CHECK(socketpair(AF_UNIX, SOCK_STREAM, 0, sp) == 0);
 CHECK((pid = fork()) >= 0);
 if (pid == 0) {
  CHECK(close(sp[0]) == 0);
  ioctl_tests_send_0(sp[1]);
  CHECK(close(sp[1]) == 0);
  exit(0);
 } else {
  CHECK(close(sp[1]) == 0);
  ioctl_tests_recv_0(sp[0]);
  CHECK(waitpid(pid, ((void*)0), 0) == pid);
  CHECK(close(sp[0]) == 0);
 }

 exit(0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 int AF_UNIX ;
 int CHECK (int) ;
 int SOCK_STREAM ;
 scalar_t__ close (int) ;
 int exit (int ) ;
 int fcntl_tests_0 (int) ;
 int fcntl_tests_1 (int) ;
 int fcntl_tests_2 (int) ;
 int fcntl_tests_recv_0 (int) ;
 int fcntl_tests_send_0 (int) ;
 scalar_t__ fork () ;
 scalar_t__ pdfork (int*,int ) ;
 scalar_t__ pdwait (int) ;
 int printf (char*) ;
 int sleep (int) ;
 int socket (int ,int ,int ) ;
 scalar_t__ socketpair (int ,int ,int ,int*) ;
 scalar_t__ waitpid (scalar_t__,int *,int ) ;

int
main(void)
{
 int fd, pfd, sp[2];
 pid_t pid;

 printf("1..870\n");

 CHECK((fd = socket(AF_UNIX, SOCK_STREAM, 0)) >= 0);
 fcntl_tests_0(fd);
 CHECK(close(fd) == 0);

 CHECK((fd = socket(AF_UNIX, SOCK_STREAM, 0)) >= 0);
 fcntl_tests_1(fd);
 CHECK(close(fd) == 0);

 CHECK((fd = socket(AF_UNIX, SOCK_STREAM, 0)) >= 0);
 fcntl_tests_2(fd);
 CHECK(close(fd) == 0);


 CHECK((fd = socket(AF_UNIX, SOCK_STREAM, 0)) >= 0);
 CHECK((pid = fork()) >= 0);
 if (pid == 0) {
  fcntl_tests_0(fd);
  CHECK(close(fd) == 0);
  exit(0);
 } else {
  CHECK(waitpid(pid, ((void*)0), 0) == pid);
  fcntl_tests_0(fd);
 }
 CHECK(close(fd) == 0);


 CHECK((fd = socket(AF_UNIX, SOCK_STREAM, 0)) >= 0);
 CHECK((pid = fork()) >= 0);
 if (pid == 0) {
  sleep(1);
  fcntl_tests_0(fd);
  CHECK(close(fd) == 0);
  exit(0);
 } else {
  fcntl_tests_0(fd);
  CHECK(waitpid(pid, ((void*)0), 0) == pid);
 }
 CHECK(close(fd) == 0);


 CHECK((fd = socket(AF_UNIX, SOCK_STREAM, 0)) >= 0);
 CHECK((pid = pdfork(&pfd, 0)) >= 0);
 if (pid == 0) {
  fcntl_tests_1(fd);
  exit(0);
 } else {
  CHECK(pdwait(pfd) == 0);




  fcntl_tests_1(fd);
 }
 CHECK(close(fd) == 0);


 CHECK((fd = socket(AF_UNIX, SOCK_STREAM, 0)) >= 0);
 CHECK((pid = pdfork(&pfd, 0)) >= 0);
 if (pid == 0) {
  sleep(1);
  fcntl_tests_1(fd);
  exit(0);
 } else {
  fcntl_tests_1(fd);
  CHECK(pdwait(pfd) == 0);




 }
 CHECK(close(fd) == 0);


 CHECK((fd = socket(AF_UNIX, SOCK_STREAM, 0)) >= 0);
 CHECK((pid = fork()) >= 0);
 if (pid == 0) {
  fcntl_tests_2(fd);
  exit(0);
 } else {
  CHECK(waitpid(pid, ((void*)0), 0) == pid);
  fcntl_tests_2(fd);
 }
 CHECK(close(fd) == 0);


 CHECK((fd = socket(AF_UNIX, SOCK_STREAM, 0)) >= 0);
 CHECK((pid = fork()) >= 0);
 if (pid == 0) {
  sleep(1);
  fcntl_tests_2(fd);
  exit(0);
 } else {
  fcntl_tests_2(fd);
  CHECK(waitpid(pid, ((void*)0), 0) == pid);
 }
 CHECK(close(fd) == 0);


 CHECK(socketpair(AF_UNIX, SOCK_STREAM, 0, sp) == 0);
 CHECK((pid = fork()) >= 0);
 if (pid == 0) {
  CHECK(close(sp[0]) == 0);
  fcntl_tests_recv_0(sp[1]);
  CHECK(close(sp[1]) == 0);
  exit(0);
 } else {
  CHECK(close(sp[1]) == 0);
  fcntl_tests_send_0(sp[0]);
  CHECK(waitpid(pid, ((void*)0), 0) == pid);
  CHECK(close(sp[0]) == 0);
 }


 CHECK(socketpair(AF_UNIX, SOCK_STREAM, 0, sp) == 0);
 CHECK((pid = fork()) >= 0);
 if (pid == 0) {
  CHECK(close(sp[0]) == 0);
  fcntl_tests_send_0(sp[1]);
  CHECK(close(sp[1]) == 0);
  exit(0);
 } else {
  CHECK(close(sp[1]) == 0);
  fcntl_tests_recv_0(sp[0]);
  CHECK(waitpid(pid, ((void*)0), 0) == pid);
  CHECK(close(sp[0]) == 0);
 }

 exit(0);
}

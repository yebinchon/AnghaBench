
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EMFILE ;
 scalar_t__ ENFILE ;
 int PF_UNIX ;
 int SOCK_STREAM ;
 int close2 (int,int) ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int errx (int,char*,int,int) ;
 int getdeferred () ;
 int my_socketpair (int*) ;
 int printf (char*,char*) ;
 int save_sysctls (int*,int*) ;
 int sendfd (int,int) ;
 int sleep (int) ;
 int socketpair (int ,int ,int ,int*) ;
 char* test ;
 int test_sysctls (int,int) ;

__attribute__((used)) static void
recursion(void)
{
 int fd[2], ff[2];
 int inflight, openfiles, deferred, deferred1;

 test = "recursion";
 printf("%s\n", test);
 save_sysctls(&inflight, &openfiles);
 deferred = getdeferred();

 my_socketpair(fd);

 for (;;) {
  if (socketpair(PF_UNIX, SOCK_STREAM, 0, ff) == -1) {
   if (errno == EMFILE || errno == ENFILE)
    break;
   err(-1, "socketpair");
  }
  sendfd(ff[0], fd[0]);
  sendfd(ff[0], fd[1]);
  close2(fd[1], fd[0]);
  fd[0] = ff[0];
  fd[1] = ff[1];
 }
 close2(fd[0], fd[1]);
 sleep(1);
 test_sysctls(inflight, openfiles);
 deferred1 = getdeferred();
 if (deferred != deferred1)
  errx(-1, "recursion: deferred before %d after %d", deferred,
      deferred1);
}

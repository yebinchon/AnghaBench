
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AFILE ;
 int ATF_CHECK_MSG (int,char*,int ) ;
 int ATF_REQUIRE (int) ;
 int ATF_REQUIRE_EQ_MSG (int ,int ,char*) ;
 int O_CREAT ;
 int PARALLEL ;
 int RENDEZVOUS ;
 int SIGUSR1 ;
 int WNOHANG ;
 int close (int) ;
 int done ;
 int errno ;
 scalar_t__ fork () ;
 int handler ;
 int open (int ,int ,int) ;
 int openfiles2 (size_t) ;
 int signal (int ,int ) ;
 int strerror (int ) ;
 int unlink (int ) ;
 int usleep (int) ;
 scalar_t__ wait (int *) ;
 int waitpid (int,int *,int ) ;

__attribute__((used)) static void
openfiles(size_t n)
{
 int i, fd;

 signal(SIGUSR1, handler);
 ATF_REQUIRE((fd = open(AFILE, O_CREAT, 0644)) != -1);
 close(fd);
 ATF_REQUIRE((fd = open(RENDEZVOUS, O_CREAT, 0644)) != -1);
 close(fd);
 done = 0;
 for (i = 0; i < PARALLEL; i++)
  if (fork() == 0)
   openfiles2(n / PARALLEL);
 while (done != PARALLEL) {
  usleep(1000);
  ATF_REQUIRE_EQ_MSG(0, waitpid(-1, ((void*)0), WNOHANG),
   "a child exited unexpectedly");
 }
 unlink(RENDEZVOUS);
 for (i = 0; i < PARALLEL; i++)
  ATF_CHECK_MSG(wait(((void*)0)) > 0, "wait: %s", strerror(errno));
}

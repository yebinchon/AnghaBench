
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_handler; } ;
typedef int sigset_t ;
typedef int reapchildren ;
typedef int pthread_t ;


 int NUM_THREADS ;
 int SIGCHLD ;
 int SIG_BLOCK ;
 int err (int,char*) ;
 int errc (int,int,char*) ;
 int memset (struct sigaction*,int ,int) ;
 int pause () ;
 int pthread_create (int *,int *,int ,int*) ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int sighandler ;
 int sigprocmask (int ,int *,int *) ;
 int vfork_test ;

int
main(void)
{
 pthread_t threads[NUM_THREADS];
 struct sigaction reapchildren;
 sigset_t sigchld_mask;
 int rc, t;

 memset(&reapchildren, 0, sizeof(reapchildren));
 reapchildren.sa_handler = sighandler;
 if (sigaction(SIGCHLD, &reapchildren, ((void*)0)) == -1)
  err(1, "Could not sigaction(SIGCHLD)");

 sigemptyset(&sigchld_mask);
 sigaddset(&sigchld_mask, SIGCHLD);
 if (sigprocmask(SIG_BLOCK, &sigchld_mask, ((void*)0)) == -1)
  err(1, "sigprocmask");

 for (t = 0; t < NUM_THREADS; t++) {
  rc = pthread_create(&threads[t], ((void*)0), vfork_test, &t);
  if (rc)
   errc(1, rc, "pthread_create");
 }
 pause();
 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int setmask ;
typedef int pthread_t ;
typedef scalar_t__ pid_t ;
typedef int cpusetid_t ;
typedef int cpuset_t ;
typedef int caddr_t ;


 int ATF_REQUIRE (int) ;
 int CHILD_REQUIRE (int) ;
 int CPU_LEVEL_CPUSET ;
 int CPU_SET (int ,int *) ;
 int CPU_WHICH_CPUSET ;
 int CPU_ZERO (int *) ;
 int PROC_REAP_ACQUIRE ;
 int PT_CONTINUE ;
 int P_PID ;
 scalar_t__ SIGKILL ;
 scalar_t__ SIGSTOP ;
 scalar_t__ WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 scalar_t__ WIFSIGNALED (int) ;
 int WIFSTOPPED (int) ;
 scalar_t__ WSTOPSIG (int) ;
 scalar_t__ WTERMSIG (int) ;
 scalar_t__ cpuset (int *) ;
 scalar_t__ cpuset_setaffinity (int ,int ,int ,int,int *) ;
 int exit (int ) ;
 scalar_t__ fork () ;
 int getpid () ;
 scalar_t__ procctl (int ,int ,int ,int *) ;
 scalar_t__ pthread_create (int *,int *,int ,int *) ;
 scalar_t__ ptrace (int ,scalar_t__,int ,int ) ;
 int raise (scalar_t__) ;
 int raise_sigstop_thread ;
 int sleep (int) ;
 int sleep_thread ;
 int trace_me () ;
 scalar_t__ wait (int*) ;
 scalar_t__ waitpid (scalar_t__,int*,int ) ;

__attribute__((used)) static void
terminate_with_pending_sigstop(bool sigstop_from_main_thread)
{
 pid_t fpid, wpid;
 int status, i;
 cpuset_t setmask;
 cpusetid_t setid;
 pthread_t t;





 ATF_REQUIRE(procctl(P_PID, getpid(), PROC_REAP_ACQUIRE, ((void*)0)) == 0);

 fpid = fork();
 ATF_REQUIRE(fpid >= 0);
 if (fpid == 0) {
  fpid = fork();
  CHILD_REQUIRE(fpid >= 0);
  if (fpid == 0) {
   trace_me();


   CPU_ZERO(&setmask);
   CPU_SET(0, &setmask);
   CHILD_REQUIRE(cpuset(&setid) == 0);
   CHILD_REQUIRE(cpuset_setaffinity(CPU_LEVEL_CPUSET,
       CPU_WHICH_CPUSET, setid,
       sizeof(setmask), &setmask) == 0);

   if (sigstop_from_main_thread) {






    CHILD_REQUIRE(pthread_create(&t, ((void*)0),
        sleep_thread, ((void*)0)) == 0);
    raise(SIGSTOP);
   } else {






    CHILD_REQUIRE(pthread_create(&t, ((void*)0),
        raise_sigstop_thread, ((void*)0)) == 0);
    sleep(60);
   }

   exit(0);
  }

  wpid = waitpid(fpid, &status, 0);
  CHILD_REQUIRE(wpid == fpid);
  CHILD_REQUIRE(WIFSTOPPED(status));
  CHILD_REQUIRE(WSTOPSIG(status) == SIGSTOP);

  CHILD_REQUIRE(ptrace(PT_CONTINUE, fpid, (caddr_t)1, 0) == 0);


  wpid = waitpid(fpid, &status, 0);
  CHILD_REQUIRE(wpid == fpid);
  CHILD_REQUIRE(WIFSTOPPED(status));
  CHILD_REQUIRE(WSTOPSIG(status) == SIGSTOP);





  exit(0);
 }







 for (i = 0; i < 2; ++i) {
  wpid = wait(&status);
  if (wpid == fpid)
   ATF_REQUIRE(WIFEXITED(status) &&
       WEXITSTATUS(status) == 0);
  else
   ATF_REQUIRE(WIFSIGNALED(status) &&
       WTERMSIG(status) == SIGKILL);
 }
}

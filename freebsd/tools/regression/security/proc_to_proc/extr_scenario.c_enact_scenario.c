
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pid_t ;
struct TYPE_2__ {int sc_canptrace_errno; int sc_canktrace_errno; int sc_cansighup_errno; int sc_cansigsegv_errno; int sc_cansee_errno; int sc_cansched_errno; char* sc_name; int sc_cred2; int sc_cred1; } ;


 int KTRFAC_SYSCALL ;
 int KTROP_SET ;

 int LOOP_MAX ;





 int PRIO_PROCESS ;
 int PT_ATTACH ;
 int SIGHUP ;
 int SIGKILL ;
 int SIGSEGV ;
 int cred_print (int ,int ) ;
 int cred_set (int ) ;
 int errno ;
 char* errno_to_string (int) ;
 int exit (int ) ;
 int fork () ;
 int fprintf (int ,char*,...) ;
 int getpriority (int ,int) ;
 int kill (int,int ) ;
 int ktrace (char*,int ,int ,int) ;
 char* mktemp (char*) ;
 int perror (char*) ;
 int ptrace (int ,int,int *,int ) ;
 TYPE_1__* scenarios ;
 int setpriority (int ,int,int ) ;
 int sleep (int) ;
 int stdout ;
 int unlink (char*) ;
 int waitpid (int,int *,int ) ;

__attribute__((used)) static int
enact_scenario(int scenario)
{
 pid_t pid1, pid2;
 char *name, *tracefile;
 int error, desirederror, loop;

 for (loop = 0; loop < LOOP_MAX+1; loop++) {



  pid1 = fork();
  switch (pid1) {
  case -1:
   return (-1);
  case 0:

   error = cred_set(scenarios[scenario].sc_cred2);
   if (error) {
    perror("cred_set");
    return (error);
   }

   sleep(200);
   exit(0);
  default:

   break;
  }
  sleep(1);




  pid2 = fork();
  switch (pid2) {
  case -1:
   return (-1);

  case 0:

   error = cred_set(scenarios[scenario].sc_cred1);
   if (error) {
    perror("cred_set");
    return (error);
   }
   errno = 0;
   switch (loop) {
   case 132:
    error = ptrace(PT_ATTACH, pid1, ((void*)0), 0);
    error = errno;
    name = "ptrace";
    desirederror =
        scenarios[scenario].sc_canptrace_errno;
    break;
   case 133:
    tracefile = mktemp("/tmp/testuid_ktrace.XXXXXX");
    if (tracefile == ((void*)0)) {
     error = errno;
     perror("mktemp");
     break;
    }
    error = ktrace(tracefile, KTROP_SET,
        KTRFAC_SYSCALL, pid1);
    error = errno;
    name = "ktrace";
    desirederror =
        scenarios[scenario].sc_canktrace_errno;
    unlink(tracefile);
    break;
   case 129:
    error = kill(pid1, SIGHUP);
    error = errno;
    name = "sighup";
    desirederror =
        scenarios[scenario].sc_cansighup_errno;
    break;
   case 128:
    error = kill(pid1, SIGSEGV);
    error = errno;
    name = "sigsegv";
    desirederror =
        scenarios[scenario].sc_cansigsegv_errno;
    break;
   case 130:
    getpriority(PRIO_PROCESS, pid1);
    error = errno;
    name = "see";
    desirederror =
        scenarios[scenario].sc_cansee_errno;
    break;
   case 131:
    error = setpriority(PRIO_PROCESS, pid1,
       0);
    error = errno;
    name = "sched";
    desirederror =
        scenarios[scenario].sc_cansched_errno;
    break;
   default:
    name = "broken";
   }

   if (error != desirederror) {
    fprintf(stdout,
        "[%s].%s: expected %s, got %s\n  ",
        scenarios[scenario].sc_name, name,
        errno_to_string(desirederror),
        errno_to_string(error));
    cred_print(stdout,
        scenarios[scenario].sc_cred1);
    cred_print(stdout,
        scenarios[scenario].sc_cred2);
    fprintf(stdout, "\n");
   }

   exit(0);

  default:

   break;
  }

  error = waitpid(pid2, ((void*)0), 0);






  kill(pid1, SIGKILL);
  error = waitpid(pid2, ((void*)0), 0);
 }

 return (0);
}

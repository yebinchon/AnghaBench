
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trussinfo {int strsize; int flags; int * outfile; int start_time; int proclist; int * curthread; } ;
struct sigaction {int sa_mask; scalar_t__ sa_flags; int sa_handler; } ;
typedef scalar_t__ pid_t ;
typedef int * caddr_t ;
struct TYPE_2__ {int pid; int * abi; } ;


 int ABSOLUTETIMESTAMPS ;
 int CLOCK_REALTIME ;
 int COUNTONLY ;
 int DISPLAYTIDS ;
 int EXECVEARGS ;
 int EXECVEENVS ;
 int FOLLOWFORKS ;
 int INT_MAX ;
 TYPE_1__* LIST_FIRST (int *) ;
 int LIST_INIT (int *) ;
 int NOSIGS ;
 int PT_DETACH ;
 int PT_SYSCALL ;
 int RELATIVETIMESTAMPS ;
 int SIGINT ;
 int SIGKILL ;
 int SIGQUIT ;
 int SIGTERM ;
 int SIG_IGN ;
 scalar_t__ atoi (char*) ;
 scalar_t__ calloc (int,int) ;
 int clock_gettime (int ,int *) ;
 int err (int,char*,char*) ;
 int errx (int,char*,...) ;
 int eventloop (struct trussinfo*) ;
 int fflush (int *) ;
 int * fopen (char*,char*) ;
 int getopt (int,char**,char*) ;
 scalar_t__ getpid () ;
 int init_syscalls () ;
 int kill (int ,int ) ;
 char* optarg ;
 scalar_t__ optind ;
 int print_summary (struct trussinfo*) ;
 int ptrace (int ,int ,int *,int ) ;
 int restore_proc ;
 int setup_and_wait (struct trussinfo*,char**) ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;
 int signal (int ,int ) ;
 int start_tracing (struct trussinfo*,scalar_t__) ;
 int * stderr ;
 int strtonum (char*,int ,int ,char const**) ;
 int usage () ;

int
main(int ac, char **av)
{
 struct sigaction sa;
 struct trussinfo *trussinfo;
 char *fname;
 char **command;
 const char *errstr;
 pid_t pid;
 int c;

 fname = ((void*)0);


 trussinfo = (struct trussinfo *)calloc(1, sizeof(struct trussinfo));
 if (trussinfo == ((void*)0))
  errx(1, "calloc() failed");

 pid = 0;
 trussinfo->outfile = stderr;
 trussinfo->strsize = 32;
 trussinfo->curthread = ((void*)0);
 LIST_INIT(&trussinfo->proclist);
 init_syscalls();
 while ((c = getopt(ac, av, "p:o:facedDs:SH")) != -1) {
  switch (c) {
  case 'p':
   pid = atoi(optarg);

   if (pid == getpid()) {
    errx(2, "attempt to grab self.");
   }
   break;
  case 'f':
   trussinfo->flags |= FOLLOWFORKS;
   break;
  case 'a':
   trussinfo->flags |= EXECVEARGS;
   break;
  case 'c':
   trussinfo->flags |= (COUNTONLY | NOSIGS);
   break;
  case 'e':
   trussinfo->flags |= EXECVEENVS;
   break;
  case 'd':
   trussinfo->flags |= ABSOLUTETIMESTAMPS;
   break;
  case 'D':
   trussinfo->flags |= RELATIVETIMESTAMPS;
   break;
  case 'o':
   fname = optarg;
   break;
  case 's':
   trussinfo->strsize = strtonum(optarg, 0, INT_MAX, &errstr);
   if (errstr)
    errx(1, "maximum string size is %s: %s", errstr, optarg);
   break;
  case 'S':
   trussinfo->flags |= NOSIGS;
   break;
  case 'H':
   trussinfo->flags |= DISPLAYTIDS;
   break;
  default:
   usage();
  }
 }

 ac -= optind; av += optind;
 if ((pid == 0 && ac == 0) ||
     (pid != 0 && ac != 0))
  usage();

 if (fname != ((void*)0)) {




  if ((trussinfo->outfile = fopen(fname, "we")) == ((void*)0))
   err(1, "cannot open %s", fname);
 }







 if (pid == 0) {

  command = av;
  setup_and_wait(trussinfo, command);
  signal(SIGINT, SIG_IGN);
  signal(SIGTERM, SIG_IGN);
  signal(SIGQUIT, SIG_IGN);
 } else {
  sa.sa_handler = restore_proc;
  sa.sa_flags = 0;
  sigemptyset(&sa.sa_mask);
  sigaction(SIGINT, &sa, ((void*)0));
  sigaction(SIGQUIT, &sa, ((void*)0));
  sigaction(SIGTERM, &sa, ((void*)0));
  start_tracing(trussinfo, pid);
 }





 if (LIST_FIRST(&trussinfo->proclist)->abi == ((void*)0)) {






  if (pid == 0)
   kill(LIST_FIRST(&trussinfo->proclist)->pid, SIGKILL);
  ptrace(PT_DETACH, LIST_FIRST(&trussinfo->proclist)->pid, ((void*)0),
      0);
  return (1);
 }
 ptrace(PT_SYSCALL, LIST_FIRST(&trussinfo->proclist)->pid, (caddr_t)1,
     0);






 clock_gettime(CLOCK_REALTIME, &trussinfo->start_time);

 eventloop(trussinfo);

 if (trussinfo->flags & COUNTONLY)
  print_summary(trussinfo);

 fflush(trussinfo->outfile);

 return (0);
}

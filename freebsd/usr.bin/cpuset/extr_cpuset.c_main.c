
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef int mask ;
typedef int lwpid_t ;
typedef int domainset_t ;
typedef int domains ;
typedef int cpusetid_t ;
typedef int cpuset_t ;


 int CPU_LEVEL_CPUSET ;
 int CPU_LEVEL_ROOT ;
 int CPU_LEVEL_WHICH ;
 int CPU_WHICH_CPUSET ;
 int CPU_WHICH_DOMAIN ;
 int CPU_WHICH_IRQ ;
 int CPU_WHICH_JAIL ;
 int CPU_WHICH_PID ;
 int CPU_WHICH_TID ;
 int CPU_ZERO (int *) ;
 int Cflag ;
 int DOMAINSET_POLICY_INVALID ;
 int DOMAINSET_ZERO (int *) ;
 scalar_t__ ENOENT ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 void* atoi (int ) ;
 int cflag ;
 scalar_t__ cpuset (int*) ;
 scalar_t__ cpuset_setaffinity (int ,int ,int,int,int *) ;
 scalar_t__ cpuset_setdomain (int ,int ,int,int,int *,int) ;
 scalar_t__ cpuset_setid (int ,int,int) ;
 int dflag ;
 int err (int,char*,...) ;
 scalar_t__ errno ;
 int errx (int,char*,int ) ;
 int execvp (char*,char**) ;
 int exit (int ) ;
 int getopt (int,char**,char*) ;
 int gflag ;
 int id ;
 int iflag ;
 int jail_errmsg ;
 int jail_getid (int ) ;
 int jflag ;
 int level ;
 int lflag ;
 int nflag ;
 int optarg ;
 scalar_t__ optind ;
 int parsecpulist (int ,int *) ;
 int parsedomainlist (int ,int *,int*) ;
 int pflag ;
 int printaffinity () ;
 int printsetid () ;
 int rflag ;
 int sflag ;
 int tflag ;
 int usage () ;
 int which ;
 int xflag ;

int
main(int argc, char *argv[])
{
 domainset_t domains;
 cpusetid_t setid;
 cpuset_t mask;
 int policy;
 lwpid_t tid;
 pid_t pid;
 int ch;

 CPU_ZERO(&mask);
 DOMAINSET_ZERO(&domains);
 policy = DOMAINSET_POLICY_INVALID;
 level = CPU_LEVEL_WHICH;
 which = CPU_WHICH_PID;
 id = pid = tid = setid = -1;
 while ((ch = getopt(argc, argv, "Ccd:gij:l:n:p:rs:t:x:")) != -1) {
  switch (ch) {
  case 'C':
   Cflag = 1;
   break;
  case 'c':
   cflag = 1;
   level = CPU_LEVEL_CPUSET;
   break;
  case 'd':
   dflag = 1;
   which = CPU_WHICH_DOMAIN;
   id = atoi(optarg);
   break;
  case 'g':
   gflag = 1;
   break;
  case 'i':
   iflag = 1;
   break;
  case 'j':
   jflag = 1;
   which = CPU_WHICH_JAIL;
   id = jail_getid(optarg);
   if (id < 0)
    errx(EXIT_FAILURE, "%s", jail_errmsg);
   break;
  case 'l':
   lflag = 1;
   parsecpulist(optarg, &mask);
   break;
  case 'n':
   nflag = 1;
   parsedomainlist(optarg, &domains, &policy);
   break;
  case 'p':
   pflag = 1;
   which = CPU_WHICH_PID;
   id = pid = atoi(optarg);
   break;
  case 'r':
   level = CPU_LEVEL_ROOT;
   rflag = 1;
   break;
  case 's':
   sflag = 1;
   which = CPU_WHICH_CPUSET;
   id = setid = atoi(optarg);
   break;
  case 't':
   tflag = 1;
   which = CPU_WHICH_TID;
   id = tid = atoi(optarg);
   break;
  case 'x':
   xflag = 1;
   which = CPU_WHICH_IRQ;
   id = atoi(optarg);
   break;
  default:
   usage();
  }
 }
 argc -= optind;
 argv += optind;
 if (gflag) {
  if (argc || Cflag || lflag || nflag)
   usage();

  if (dflag + jflag + xflag + sflag + pflag + tflag > 1)
   usage();
  if (iflag)
   printsetid();
  else
   printaffinity();
  exit(EXIT_SUCCESS);
 }

 if (dflag || iflag || rflag)
  usage();



 if (argc) {
  if (Cflag || pflag || tflag || xflag || jflag)
   usage();
  if (sflag) {
   if (cpuset_setid(CPU_WHICH_PID, -1, setid))
    err(argc, "setid");
  } else {
   if (cpuset(&setid))
    err(argc, "newid");
  }
  if (lflag) {
   if (cpuset_setaffinity(level, CPU_WHICH_PID,
       -1, sizeof(mask), &mask) != 0)
    err(EXIT_FAILURE, "setaffinity");
  }
  if (nflag) {
   if (cpuset_setdomain(level, CPU_WHICH_PID,
       -1, sizeof(domains), &domains, policy) != 0)
    err(EXIT_FAILURE, "setdomain");
  }
  errno = 0;
  execvp(*argv, argv);
  err(errno == ENOENT ? 127 : 126, "%s", *argv);
 }



 if (Cflag && (jflag || !pflag || sflag || tflag || xflag))
  usage();
 if ((!lflag && !nflag) && cflag)
  usage();
 if ((!lflag && !nflag) && !(Cflag || sflag))
  usage();

 if (tflag && (sflag | pflag | xflag | jflag))
  usage();

 if (xflag && (jflag | pflag | sflag | tflag))
  usage();
 if (Cflag) {




  if (cpuset(&setid) < 0)
   err(EXIT_FAILURE, "newid");
  sflag = 1;
 }
 if (pflag && sflag) {
  if (cpuset_setid(CPU_WHICH_PID, pid, setid))
   err(EXIT_FAILURE, "setid");




  which = CPU_WHICH_PID;
  id = pid;
 }
 if (lflag) {
  if (cpuset_setaffinity(level, which, id, sizeof(mask),
      &mask) != 0)
   err(EXIT_FAILURE, "setaffinity");
 }
 if (nflag) {
  if (cpuset_setdomain(level, which, id, sizeof(domains),
      &domains, policy) != 0)
   err(EXIT_FAILURE, "setdomain");
 }

 exit(EXIT_SUCCESS);
}

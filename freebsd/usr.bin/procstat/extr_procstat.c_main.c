
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct procstat_cmd {scalar_t__ cmd; char* xocontainer; int (* opt ) (int,char**) ;} ;
struct procstat {int dummy; } ;
struct kinfo_proc {int dummy; } ;
typedef int pid_t ;


 long INT_MAX ;
 int KERN_PROC_PID ;
 int KERN_PROC_PROC ;
 int PROCSTAT_XO_VERSION ;
 int PS_OPT_CAPABILITIES ;
 int PS_OPT_NOHEADER ;
 int PS_OPT_PERTHREAD ;
 int PS_OPT_SIGNUM ;
 int PS_OPT_VERBOSE ;
 int PS_SUBCOMMAND_OPTS ;
 int exit (int ) ;
 struct procstat_cmd* getcmd (char*) ;
 int getopt (int,char**,char*) ;
 int kinfo_proc_sort (struct kinfo_proc*,int) ;
 char* optarg ;
 int optind ;
 int optreset ;
 int procstat (struct procstat_cmd const*,struct procstat*,struct kinfo_proc*) ;
 int procstat_close (struct procstat*) ;
 scalar_t__ procstat_files ;
 int procstat_freeprocs (struct procstat*,struct kinfo_proc*) ;
 struct kinfo_proc* procstat_getprocs (struct procstat*,int ,int,int*) ;
 scalar_t__ procstat_kstack ;
 struct procstat* procstat_open_core (char*) ;
 struct procstat* procstat_open_kvm (char*,char*) ;
 struct procstat* procstat_open_sysctl () ;
 int procstat_opts ;
 int sleep (int) ;
 long strtol (char*,char**,int) ;
 int stub1 (int,char**) ;
 int usage () ;
 int warnx (char*) ;
 int xo_close_container (char*) ;
 int xo_errx (int,char*) ;
 int xo_finish () ;
 int xo_flush () ;
 int xo_open_container (char*) ;
 int xo_parse_args (int,char**) ;
 int xo_set_version (int ) ;

int
main(int argc, char *argv[])
{
 int ch, interval;
 int i;
 struct kinfo_proc *p;
 const struct procstat_cmd *cmd;
 struct procstat *prstat, *cprstat;
 long l;
 pid_t pid;
 char *dummy;
 char *nlistf, *memf;
 int aflag;
 int cnt;

 interval = 0;
 cmd = ((void*)0);
 memf = nlistf = ((void*)0);
 aflag = 0;
 argc = xo_parse_args(argc, argv);

 while ((ch = getopt(argc, argv, "abCcefHhijkLlM:N:nrSstvw:x")) != -1) {
  switch (ch) {
  case 'a':
   aflag++;
   break;
  case 'b':
   if (cmd != ((void*)0))
    usage();
   cmd = getcmd("binary");
   break;
  case 'C':
   procstat_opts |= PS_OPT_CAPABILITIES;
   break;
  case 'c':
   if (cmd != ((void*)0))
    usage();
   cmd = getcmd("arguments");
   break;
  case 'e':
   if (cmd != ((void*)0))
    usage();
   cmd = getcmd("environment");
   break;
  case 'f':
   if (cmd != ((void*)0))
    usage();
   cmd = getcmd("files");
   break;
  case 'H':
   procstat_opts |= PS_OPT_PERTHREAD;
   break;
  case 'h':
   procstat_opts |= PS_OPT_NOHEADER;
   break;
  case 'i':
   if (cmd != ((void*)0))
    usage();
   cmd = getcmd("signals");
   break;
  case 'j':
   if (cmd != ((void*)0))
    usage();
   cmd = getcmd("tsignals");
   break;
  case 'k':
   if (cmd != ((void*)0) && cmd->cmd == procstat_kstack) {
    if ((procstat_opts & PS_OPT_VERBOSE) != 0)
     usage();
    procstat_opts |= PS_OPT_VERBOSE;
   } else {
    if (cmd != ((void*)0))
     usage();
    cmd = getcmd("kstack");
   }
   break;
  case 'L':
   if (cmd != ((void*)0))
    usage();
   cmd = getcmd("ptlwpinfo");
   break;
  case 'l':
   if (cmd != ((void*)0))
    usage();
   cmd = getcmd("rlimit");
   break;
  case 'M':
   memf = optarg;
   break;
  case 'N':
   nlistf = optarg;
   break;
  case 'n':
   procstat_opts |= PS_OPT_SIGNUM;
   break;
  case 'r':
   if (cmd != ((void*)0))
    usage();
   cmd = getcmd("rusage");
   break;
  case 'S':
   if (cmd != ((void*)0))
    usage();
   cmd = getcmd("cpuset");
   break;
  case 's':
   if (cmd != ((void*)0))
    usage();
   cmd = getcmd("credentials");
   break;
  case 't':
   if (cmd != ((void*)0))
    usage();
   cmd = getcmd("threads");
   break;
  case 'v':
   if (cmd != ((void*)0))
    usage();
   cmd = getcmd("vm");
   break;
  case 'w':
   l = strtol(optarg, &dummy, 10);
   if (*dummy != '\0')
    usage();
   if (l < 1 || l > INT_MAX)
    usage();
   interval = l;
   break;
  case 'x':
   if (cmd != ((void*)0))
    usage();
   cmd = getcmd("auxv");
   break;
  case '?':
  default:
   usage();
  }

 }
 argc -= optind;
 argv += optind;

 if (cmd == ((void*)0) && argv[0] != ((void*)0) && (cmd = getcmd(argv[0])) != ((void*)0)) {
  if ((procstat_opts & PS_SUBCOMMAND_OPTS) != 0)
   usage();
  if (cmd->opt != ((void*)0)) {
   optreset = 1;
   optind = 1;
   cmd->opt(argc, argv);
   argc -= optind;
   argv += optind;
  } else {
   argc -= 1;
   argv += 1;
  }
 } else {
  if (cmd == ((void*)0))
   cmd = getcmd("basic");
  if (cmd->cmd != procstat_files &&
      (procstat_opts & PS_OPT_CAPABILITIES) != 0)
   usage();
 }


 if (!(aflag == 1 && argc == 0) && !(aflag == 0 && argc > 0))
  usage();

 if (memf != ((void*)0))
  prstat = procstat_open_kvm(nlistf, memf);
 else
  prstat = procstat_open_sysctl();
 if (prstat == ((void*)0))
  xo_errx(1, "procstat_open()");
 do {
  xo_set_version(PROCSTAT_XO_VERSION);
  xo_open_container("procstat");
  xo_open_container(cmd->xocontainer);

  if (aflag) {
   p = procstat_getprocs(prstat, KERN_PROC_PROC, 0, &cnt);
   if (p == ((void*)0))
    xo_errx(1, "procstat_getprocs()");
   kinfo_proc_sort(p, cnt);
   for (i = 0; i < cnt; i++) {
    procstat(cmd, prstat, &p[i]);


    procstat_opts |= PS_OPT_NOHEADER;
    xo_flush();
   }
   procstat_freeprocs(prstat, p);
  }
  for (i = 0; i < argc; i++) {
   l = strtol(argv[i], &dummy, 10);
   if (*dummy == '\0') {
    if (l < 0)
     usage();
    pid = l;

    p = procstat_getprocs(prstat, KERN_PROC_PID,
        pid, &cnt);
    if (p == ((void*)0))
     xo_errx(1, "procstat_getprocs()");
    if (cnt != 0)
     procstat(cmd, prstat, p);
    procstat_freeprocs(prstat, p);
   } else {
    cprstat = procstat_open_core(argv[i]);
    if (cprstat == ((void*)0)) {
     warnx("procstat_open()");
     continue;
    }
    p = procstat_getprocs(cprstat, KERN_PROC_PID,
        -1, &cnt);
    if (p == ((void*)0))
     xo_errx(1, "procstat_getprocs()");
    if (cnt != 0)
     procstat(cmd, cprstat, p);
    procstat_freeprocs(cprstat, p);
    procstat_close(cprstat);
   }

   procstat_opts |= PS_OPT_NOHEADER;
  }

  xo_close_container(cmd->xocontainer);
  xo_close_container("procstat");
  xo_finish();
  if (interval)
   sleep(interval);
 } while (interval);

 procstat_close(prstat);

 exit(0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct procstat {int dummy; } ;
struct passwd {int pw_uid; } ;
struct kinfo_proc {scalar_t__ ki_stat; } ;


 int KERN_PROC_PID ;
 int KERN_PROC_PROC ;
 int KERN_PROC_UID ;
 scalar_t__ SZOMB ;
 int atoi (int *) ;
 int checkfile ;
 int dofiles (struct procstat*,struct kinfo_proc*) ;
 int errx (int,char*,...) ;
 int exit (int) ;
 scalar_t__ fsflg ;
 scalar_t__ getfname (char*) ;
 int getopt (int,char**,char*) ;
 struct passwd* getpwnam (int *) ;
 int isdigit (int ) ;
 int * memf ;
 int mflg ;
 int nflg ;
 int * nlistf ;
 int * optarg ;
 int optind ;
 int pflg ;
 int printf (char*,...) ;
 int procstat_close (struct procstat*) ;
 int procstat_freeprocs (struct procstat*,struct kinfo_proc*) ;
 struct kinfo_proc* procstat_getprocs (struct procstat*,int,int,int*) ;
 struct procstat* procstat_open_kvm (int *,int *) ;
 struct procstat* procstat_open_sysctl () ;
 int putchar (char) ;
 int sflg ;
 int uflg ;
 int usage () ;
 int vflg ;
 int warnx (char*) ;

int
do_fstat(int argc, char **argv)
{
 struct kinfo_proc *p;
 struct passwd *passwd;
 struct procstat *procstat;
 int arg, ch, what;
 int cnt, i;

 arg = 0;
 what = KERN_PROC_PROC;
 nlistf = memf = ((void*)0);
 while ((ch = getopt(argc, argv, "fmnp:su:vN:M:")) != -1)
  switch((char)ch) {
  case 'f':
   fsflg = 1;
   break;
  case 'M':
   memf = optarg;
   break;
  case 'N':
   nlistf = optarg;
   break;
  case 'm':
   mflg = 1;
   break;
  case 'n':
   nflg = 1;
   break;
  case 'p':
   if (pflg++)
    usage();
   if (!isdigit(*optarg)) {
    warnx("-p requires a process id");
    usage();
   }
   what = KERN_PROC_PID;
   arg = atoi(optarg);
   break;
  case 's':
   sflg = 1;
   break;
  case 'u':
   if (uflg++)
    usage();
   if (!(passwd = getpwnam(optarg)))
    errx(1, "%s: unknown uid", optarg);
   what = KERN_PROC_UID;
   arg = passwd->pw_uid;
   break;
  case 'v':
   vflg = 1;
   break;
  case '?':
  default:
   usage();
  }

 if (*(argv += optind)) {
  for (; *argv; ++argv) {
   if (getfname(*argv))
    checkfile = 1;
  }
  if (!checkfile)
   exit(1);
 }

 if (fsflg && !checkfile) {

  if (getfname(".") == 0)
   exit(1);
  checkfile = 1;
 }

 if (memf != ((void*)0))
  procstat = procstat_open_kvm(nlistf, memf);
 else
  procstat = procstat_open_sysctl();
 if (procstat == ((void*)0))
  errx(1, "procstat_open()");
 p = procstat_getprocs(procstat, what, arg, &cnt);
 if (p == ((void*)0))
  errx(1, "procstat_getprocs()");




 if (nflg)
  printf("%s",
"USER     CMD          PID   FD  DEV    INUM       MODE SZ|DV R/W");
 else
  printf("%s",
"USER     CMD          PID   FD MOUNT      INUM MODE         SZ|DV R/W");
 if (checkfile && fsflg == 0)
  printf(" NAME\n");
 else
  putchar('\n');




 for (i = 0; i < cnt; i++) {
  if (p[i].ki_stat == SZOMB)
   continue;
  dofiles(procstat, &p[i]);
 }
 procstat_freeprocs(procstat, p);
 procstat_close(procstat);
 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmvars {int dummy; } ;


 int Bflag ;
 int GMON_PROF_BUSY ;
 int GMON_PROF_ERROR ;
 int GMON_PROF_HIRES ;
 int GMON_PROF_OFF ;
 int GMON_PROF_ON ;
 int O_RDWR ;
 int bflag ;
 int dumpstate (struct kvmvars*) ;
 int err (int,char*) ;
 int fprintf (int ,char*,char*) ;
 char* getbootfile () ;
 int getopt (int,char**,char*) ;
 int getprof (struct kvmvars*) ;
 int getuid () ;
 int hflag ;
 int kflag ;
 int openfiles (char const*,char*,struct kvmvars*) ;
 void* optarg ;
 scalar_t__ optind ;
 int pflag ;
 int reset (struct kvmvars*) ;
 int rflag ;
 scalar_t__ seteuid (int ) ;
 int setprof (struct kvmvars*,int) ;
 int stdout ;
 int usage () ;

int
main(int argc, char **argv)
{
 int ch, mode, disp, accessmode;
 struct kvmvars kvmvars;
 const char *systemname;
 char *kmemf;

 if (seteuid(getuid()) != 0) {
  err(1, "seteuid failed\n");
 }
 kmemf = ((void*)0);
 systemname = ((void*)0);
 while ((ch = getopt(argc, argv, "M:N:Bbhpr")) != -1) {
  switch((char)ch) {

  case 'M':
   kmemf = optarg;
   kflag = 1;
   break;

  case 'N':
   systemname = optarg;
   break;

  case 'B':
   Bflag = 1;
   break;

  case 'b':
   bflag = 1;
   break;

  case 'h':
   hflag = 1;
   break;

  case 'p':
   pflag = 1;
   break;

  case 'r':
   rflag = 1;
   break;

  default:
   usage();
  }
 }
 argc -= optind;
 argv += optind;



 if (*argv) {
  systemname = *argv;
  if (*++argv) {
   kmemf = *argv;
   ++kflag;
  }
 }

 if (systemname == ((void*)0))
  systemname = getbootfile();
 accessmode = openfiles(systemname, kmemf, &kvmvars);
 mode = getprof(&kvmvars);
 if (hflag)
  disp = GMON_PROF_OFF;
 else if (Bflag)
  disp = GMON_PROF_HIRES;
 else if (bflag)
  disp = GMON_PROF_ON;
 else
  disp = mode;
 if (pflag)
  dumpstate(&kvmvars);
 if (rflag)
  reset(&kvmvars);
 if (accessmode == O_RDWR)
  setprof(&kvmvars, disp);
 (void)fprintf(stdout, "kgmon: kernel profiling is %s.\n",
        disp == GMON_PROF_OFF ? "off" :
        disp == GMON_PROF_HIRES ? "running (high resolution)" :
        disp == GMON_PROF_ON ? "running" :
        disp == GMON_PROF_BUSY ? "busy" :
        disp == GMON_PROF_ERROR ? "off (error)" :
        "in an unknown state");
 return (0);
}

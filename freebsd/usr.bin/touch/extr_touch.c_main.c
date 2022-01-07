
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {scalar_t__ tv_sec; void* tv_nsec; } ;
struct stat {struct timespec st_mtim; struct timespec st_atim; } ;


 int AT_FDCWD ;
 int AT_SYMLINK_NOFOLLOW ;
 int DEFFILEMODE ;
 scalar_t__ ENOENT ;
 int O_CREAT ;
 int O_WRONLY ;
 void* UTIME_NOW ;
 void* UTIME_OMIT ;
 char* basename (char*) ;
 scalar_t__ close (int) ;
 scalar_t__ errno ;
 int exit (int) ;
 scalar_t__ fstat (int,struct stat*) ;
 scalar_t__ fstatat (int ,char*,struct stat*,int) ;
 int getopt (int,char**,char*) ;
 int open (char*,int,int ) ;
 int optarg ;
 scalar_t__ optind ;
 int stime_arg1 (int ,struct timespec*) ;
 int stime_arg2 (int ,int,struct timespec*) ;
 int stime_darg (int ,struct timespec*) ;
 int stime_file (int ,struct timespec*) ;
 int strtol (char*,char**,int) ;
 int timeoffset (int ) ;
 int usage (char*) ;
 int utimensat (int ,char*,struct timespec*,int) ;
 int warn (char*,char*) ;

int
main(int argc, char *argv[])
{
 struct stat sb;
 struct timespec ts[2];
 int atflag;
 int Aflag, aflag, cflag, mflag, ch, fd, len, rval, timeset;
 char *p;
 char *myname;

 myname = basename(argv[0]);
 Aflag = aflag = cflag = mflag = timeset = 0;
 atflag = 0;
 ts[0].tv_sec = ts[1].tv_sec = 0;
 ts[0].tv_nsec = ts[1].tv_nsec = UTIME_NOW;

 while ((ch = getopt(argc, argv, "A:acd:fhmr:t:")) != -1)
  switch(ch) {
  case 'A':
   Aflag = timeoffset(optarg);
   break;
  case 'a':
   aflag = 1;
   break;
  case 'c':
   cflag = 1;
   break;
  case 'd':
   timeset = 1;
   stime_darg(optarg, ts);
   break;
  case 'f':

   break;
  case 'h':
   cflag = 1;
   atflag = AT_SYMLINK_NOFOLLOW;
   break;
  case 'm':
   mflag = 1;
   break;
  case 'r':
   timeset = 1;
   stime_file(optarg, ts);
   break;
  case 't':
   timeset = 1;
   stime_arg1(optarg, ts);
   break;
  default:
   usage(myname);
  }
 argc -= optind;
 argv += optind;

 if (aflag == 0 && mflag == 0)
  aflag = mflag = 1;

 if (timeset) {
  if (Aflag) {





   if (aflag)
    ts[0].tv_sec += Aflag;
   if (mflag)
    ts[1].tv_sec += Aflag;
   Aflag = 0;
  }
 } else {





  if (argc > 1) {
   strtol(argv[0], &p, 10);
   len = p - argv[0];
   if (*p == '\0' && (len == 8 || len == 10)) {
    timeset = 1;
    stime_arg2(*argv++, len == 10, ts);
   }
  }

  ts[1] = ts[0];
 }

 if (!aflag)
  ts[0].tv_nsec = UTIME_OMIT;
 if (!mflag)
  ts[1].tv_nsec = UTIME_OMIT;

 if (*argv == ((void*)0))
  usage(myname);

 if (Aflag)
  cflag = 1;

 for (rval = 0; *argv; ++argv) {

  if (fstatat(AT_FDCWD, *argv, &sb, atflag) != 0) {
   if (errno != ENOENT) {
    rval = 1;
    warn("%s", *argv);
    continue;
   }
   if (!cflag) {

    fd = open(*argv,
        O_WRONLY | O_CREAT, DEFFILEMODE);
    if (fd == -1 || fstat(fd, &sb) || close(fd)) {
     rval = 1;
     warn("%s", *argv);
     continue;
    }


    if (!timeset)
     continue;
   } else
    continue;
  }





  if (Aflag) {
   if (aflag) {
    ts[0] = sb.st_atim;
    ts[0].tv_sec += Aflag;
   }
   if (mflag) {
    ts[1] = sb.st_mtim;
    ts[1].tv_sec += Aflag;
   }
  }

  if (!utimensat(AT_FDCWD, *argv, ts, atflag))
   continue;

  rval = 1;
  warn("%s", *argv);
 }
 exit(rval);
}

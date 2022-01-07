
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ uid_t ;
struct TYPE_2__ {scalar_t__ dqb_itime; scalar_t__ dqb_btime; void* dqb_ihardlimit; void* dqb_isoftlimit; void* dqb_bhardlimit; void* dqb_bsoftlimit; } ;
struct quotause {char* fsname; TYPE_1__ dqblk; struct quotause* next; } ;
typedef int buf ;


 int GRPQUOTA ;
 int MAXLOGNAME ;
 int O_CLOEXEC ;
 int USRQUOTA ;
 scalar_t__ atoi (char*) ;
 struct quotause* calloc (int,int) ;
 int close (int) ;
 void* cvtblkval (int ,char,char*) ;
 void* cvtinoval (int ,char,char*) ;
 scalar_t__ editit (int ) ;
 int errx (int,char*,...) ;
 int exit (int) ;
 int fchown (int,scalar_t__,int ) ;
 int freeprivs (struct quotause*) ;
 long getentry (char*,int) ;
 int getgid () ;
 int getopt (int,char**,char*) ;
 struct quotause* getprivs (long,int,char*) ;
 scalar_t__ getuid () ;
 int hflag ;
 int isdigit (char) ;
 int mkostemp (int ,int ) ;
 char* optarg ;
 scalar_t__ optind ;
 int putprivs (long,struct quotause*) ;
 scalar_t__ readprivs (struct quotause*,int ) ;
 scalar_t__ readtimes (struct quotause*,int ) ;
 int snprintf (char*,int,char*,char*) ;
 char* strchr (char*,char) ;
 int strlcpy (char*,char*,int) ;
 scalar_t__ strlen (char*) ;
 char* strsep (char**,char*) ;
 scalar_t__ strspn (char*,char*) ;
 int strtoll (char*,char**,int) ;
 int tmpfil ;
 int unlink (int ) ;
 int usage () ;
 int warnx (char*,...) ;
 scalar_t__ writeprivs (struct quotause*,int,char*,int) ;
 scalar_t__ writetimes (struct quotause*,int,int) ;

int
main(int argc, char *argv[])
{
 struct quotause *qup, *protoprivs, *curprivs;
 long id, protoid;
 int i, quotatype, range, tmpfd;
 uid_t startuid, enduid;
 uint64_t lim;
 char *protoname, *cp, *endpt, *oldoptarg;
 int eflag = 0, tflag = 0, pflag = 0, ch;
 char *fspath = ((void*)0);
 char buf[MAXLOGNAME];

 if (argc < 2)
  usage();
 if (getuid())
  errx(1, "permission denied");
 quotatype = USRQUOTA;
 protoprivs = ((void*)0);
 curprivs = ((void*)0);
 protoname = ((void*)0);
 while ((ch = getopt(argc, argv, "ughtf:p:e:")) != -1) {
  switch(ch) {
  case 'f':
   fspath = optarg;
   break;
  case 'p':
   if (eflag) {
    warnx("cannot specify both -e and -p");
    usage();

   }
   protoname = optarg;
   pflag++;
   break;
  case 'g':
   quotatype = GRPQUOTA;
   break;
  case 'h':
   hflag++;
   break;
  case 'u':
   quotatype = USRQUOTA;
   break;
  case 't':
   tflag++;
   break;
  case 'e':
   if (pflag) {
    warnx("cannot specify both -e and -p");
    usage();

   }
   if ((qup = calloc(1, sizeof(*qup))) == ((void*)0))
    errx(2, "out of memory");
   oldoptarg = optarg;
   for (i = 0, cp = optarg;
        (cp = strsep(&optarg, ":")) != ((void*)0); i++) {
    if (cp != oldoptarg)
     *(cp - 1) = ':';
    if (i > 0 && !isdigit(*cp)) {
     warnx("incorrect quota specification: "
         "%s", oldoptarg);
     usage();

    }
    switch (i) {
    case 0:
     strlcpy(qup->fsname, cp,
         sizeof(qup->fsname));
     break;
    case 1:
     lim = strtoll(cp, &endpt, 10);
     qup->dqblk.dqb_bsoftlimit =
      cvtblkval(lim, *endpt,
          "block soft limit");
     continue;
    case 2:
     lim = strtoll(cp, &endpt, 10);
     qup->dqblk.dqb_bhardlimit =
      cvtblkval(lim, *endpt,
          "block hard limit");
     continue;
    case 3:
     lim = strtoll(cp, &endpt, 10);
     qup->dqblk.dqb_isoftlimit =
      cvtinoval(lim, *endpt,
          "inode soft limit");
     continue;
    case 4:
     lim = strtoll(cp, &endpt, 10);
     qup->dqblk.dqb_ihardlimit =
      cvtinoval(lim, *endpt,
          "inode hard limit");
     continue;
    default:
     warnx("incorrect quota specification: "
         "%s", oldoptarg);
     usage();

    }
   }
   if (protoprivs == ((void*)0)) {
    protoprivs = curprivs = qup;
   } else {
    curprivs->next = qup;
    curprivs = qup;
   }
   eflag++;
   break;
  default:
   usage();

  }
 }
 argc -= optind;
 argv += optind;
 if (pflag || eflag) {
  if (pflag) {
   if ((protoid = getentry(protoname, quotatype)) == -1)
    exit(1);
   protoprivs = getprivs(protoid, quotatype, fspath);
   if (protoprivs == ((void*)0))
    exit(0);
   for (qup = protoprivs; qup; qup = qup->next) {
    qup->dqblk.dqb_btime = 0;
    qup->dqblk.dqb_itime = 0;
   }
  }
  for (; argc-- > 0; argv++) {
   if (strspn(*argv, "0123456789-") == strlen(*argv) &&
       (cp = strchr(*argv, '-')) != ((void*)0)) {
    *cp++ = '\0';
    startuid = atoi(*argv);
    enduid = atoi(cp);
    if (enduid < startuid)
     errx(1,
 "ending uid (%d) must be >= starting uid (%d) when using uid ranges",
      enduid, startuid);
    range = 1;
   } else {
    startuid = enduid = 0;
    range = 0;
   }
   for ( ; startuid <= enduid; startuid++) {
    if (range)
     snprintf(buf, sizeof(buf), "%d",
         startuid);
    else
     snprintf(buf, sizeof(buf), "%s",
      *argv);
    if ((id = getentry(buf, quotatype)) < 0)
     continue;
    if (pflag) {
     putprivs(id, protoprivs);
     continue;
    }
    for (qup = protoprivs; qup; qup = qup->next) {
     curprivs = getprivs(id, quotatype,
         qup->fsname);
     if (curprivs == ((void*)0))
      continue;
     curprivs->dqblk = qup->dqblk;
     putprivs(id, curprivs);
     freeprivs(curprivs);
    }
   }
  }
  if (pflag)
   freeprivs(protoprivs);
  exit(0);
 }
 tmpfd = mkostemp(tmpfil, O_CLOEXEC);
 fchown(tmpfd, getuid(), getgid());
 if (tflag) {
  if ((protoprivs = getprivs(0, quotatype, fspath)) != ((void*)0)) {
   if (writetimes(protoprivs, tmpfd, quotatype) != 0 &&
       editit(tmpfil) && readtimes(protoprivs, tmpfil))
    putprivs(0L, protoprivs);
   freeprivs(protoprivs);
  }
  close(tmpfd);
  unlink(tmpfil);
  exit(0);
 }
 for ( ; argc > 0; argc--, argv++) {
  if ((id = getentry(*argv, quotatype)) == -1)
   continue;
  if ((curprivs = getprivs(id, quotatype, fspath)) == ((void*)0))
   exit(1);
  if (writeprivs(curprivs, tmpfd, *argv, quotatype) == 0)
   continue;
  if (editit(tmpfil) && readprivs(curprivs, tmpfil))
   putprivs(id, curprivs);
  freeprivs(curprivs);
 }
 close(tmpfd);
 unlink(tmpfil);
 exit(0);
}

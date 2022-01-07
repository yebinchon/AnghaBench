
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int off_t ;
typedef char* intmax_t ;
struct TYPE_10__ {int fts_info; int fts_bignum; int fts_level; char* fts_path; TYPE_2__* fts_parent; TYPE_1__* fts_statp; int fts_errno; } ;
struct TYPE_9__ {int fts_bignum; } ;
struct TYPE_8__ {int st_size; int st_blocks; int st_nlink; } ;
typedef TYPE_3__ FTSENT ;
typedef int FTS ;


 int Aflag ;
 int DEV_BSIZE ;
 scalar_t__ ERANGE ;
 int FTS_COMFOLLOW ;





 int FTS_LOGICAL ;

 int FTS_PHYSICAL ;
 int FTS_SKIP ;
 int FTS_XDEV ;
 int INT_MAX ;
 int LC_ALL ;
 int SIGINFO ;

 int SLIST_INIT (int *) ;
 scalar_t__ UNITS_2 ;
 scalar_t__ UNITS_SI ;
 void* atoi (int ) ;
 int blocksize ;
 int cblocksize ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int exit (int) ;
 int expand_number (int ,int*) ;
 int * fts_open (char**,int,int *) ;
 TYPE_3__* fts_read (int *) ;
 int fts_set (int *,TYPE_3__*,int ) ;
 int getbsize (int*,int*) ;
 int getopt_long (int,char**,char*,int ,int *) ;
 scalar_t__ hflag ;
 int howmany (int,int) ;
 int ignoreadd (int ) ;
 int ignoreclean () ;
 int ignorep (TYPE_3__*) ;
 int ignores ;
 int info ;
 int linkchk (TYPE_3__*) ;
 int long_options ;
 int nodumpflag ;
 int optarg ;
 scalar_t__ optind ;
 int printf (char*,...) ;
 int prthumanval (int) ;
 int setlocale (int ,char*) ;
 int siginfo ;
 int signal (int ,int ) ;
 int strerror (int ) ;
 int usage () ;
 int warnx (char*,char*,...) ;

int
main(int argc, char *argv[])
{
 FTS *fts;
 FTSENT *p;
 off_t savednumber, curblocks;
 off_t threshold, threshold_sign;
 int ftsoptions;
 int depth;
 int Hflag, Lflag, aflag, sflag, dflag, cflag;
 int lflag, ch, notused, rval;
 char **save;
 static char dot[] = ".";

 setlocale(LC_ALL, "");

 Hflag = Lflag = aflag = sflag = dflag = cflag = lflag = Aflag = 0;

 save = argv;
 ftsoptions = FTS_PHYSICAL;
 savednumber = 0;
 threshold = 0;
 threshold_sign = 1;
 cblocksize = DEV_BSIZE;
 blocksize = 0;
 depth = INT_MAX;
 SLIST_INIT(&ignores);

 while ((ch = getopt_long(argc, argv, "+AB:HI:LPasd:cghklmnrt:x",
     long_options, ((void*)0))) != -1)
  switch (ch) {
  case 'A':
   Aflag = 1;
   break;
  case 'B':
   errno = 0;
   cblocksize = atoi(optarg);
   if (errno == ERANGE || cblocksize <= 0) {
    warnx("invalid argument to option B: %s",
        optarg);
    usage();
   }
   break;
  case 'H':
   Hflag = 1;
   Lflag = 0;
   break;
  case 'I':
   ignoreadd(optarg);
   break;
  case 'L':
   Lflag = 1;
   Hflag = 0;
   break;
  case 'P':
   Hflag = Lflag = 0;
   break;
  case 'a':
   aflag = 1;
   break;
  case 's':
   sflag = 1;
   break;
  case 'd':
   dflag = 1;
   errno = 0;
   depth = atoi(optarg);
   if (errno == ERANGE || depth < 0) {
    warnx("invalid argument to option d: %s",
        optarg);
    usage();
   }
   break;
  case 'c':
   cflag = 1;
   break;
  case 'g':
   hflag = 0;
   blocksize = 1073741824;
   break;
  case 'h':
   hflag = UNITS_2;
   break;
  case 'k':
   hflag = 0;
   blocksize = 1024;
   break;
  case 'l':
   lflag = 1;
   break;
  case 'm':
   hflag = 0;
   blocksize = 1048576;
   break;
  case 'n':
   nodumpflag = 1;
   break;
  case 'r':
   break;
  case 't' :
   if (expand_number(optarg, &threshold) != 0 ||
       threshold == 0) {
    warnx("invalid threshold: %s", optarg);
    usage();
   } else if (threshold < 0)
    threshold_sign = -1;
   break;
  case 'x':
   ftsoptions |= FTS_XDEV;
   break;
  case 128:
   hflag = UNITS_SI;
   break;
  case '?':
  default:
   usage();

  }

 argc -= optind;
 argv += optind;
 if (Hflag)
  ftsoptions |= FTS_COMFOLLOW;
 if (Lflag) {
  ftsoptions &= ~FTS_PHYSICAL;
  ftsoptions |= FTS_LOGICAL;
 }

 if (!Aflag && (cblocksize % DEV_BSIZE) != 0)
  cblocksize = howmany(cblocksize, DEV_BSIZE) * DEV_BSIZE;

 if (aflag + dflag + sflag > 1)
  usage();
 if (sflag)
  depth = 0;

 if (!*argv) {
  argv = save;
  argv[0] = dot;
  argv[1] = ((void*)0);
 }

 if (blocksize == 0)
  (void)getbsize(&notused, &blocksize);

 if (!Aflag) {
  cblocksize /= DEV_BSIZE;
  blocksize /= DEV_BSIZE;
 }

 if (threshold != 0)
  threshold = howmany(threshold / DEV_BSIZE * cblocksize,
      blocksize);

 rval = 0;

 (void)signal(SIGINFO, siginfo);

 if ((fts = fts_open(argv, ftsoptions, ((void*)0))) == ((void*)0))
  err(1, "fts_open");

 while ((p = fts_read(fts)) != ((void*)0)) {
  switch (p->fts_info) {
  case 134:
   if (ignorep(p))
    fts_set(fts, p, FTS_SKIP);
   break;
  case 131:
   if (ignorep(p))
    break;

   curblocks = Aflag ?
       howmany(p->fts_statp->st_size, cblocksize) :
       howmany(p->fts_statp->st_blocks, cblocksize);
   p->fts_parent->fts_bignum += p->fts_bignum +=
       curblocks;

   if (p->fts_level <= depth && threshold <=
       threshold_sign * howmany(p->fts_bignum *
       cblocksize, blocksize)) {
    if (hflag > 0) {
     prthumanval(p->fts_bignum);
     (void)printf("\t%s\n", p->fts_path);
    } else {
     (void)printf("%jd\t%s\n",
         (intmax_t)howmany(p->fts_bignum *
         cblocksize, blocksize),
         p->fts_path);
    }
   }
   if (info) {
    info = 0;
    (void)printf("\t%s\n", p->fts_path);
   }
   break;
  case 133:
   break;
  case 132:
  case 130:
  case 129:
   warnx("%s: %s", p->fts_path, strerror(p->fts_errno));
   rval = 1;
   break;
  default:
   if (ignorep(p))
    break;

   if (lflag == 0 && p->fts_statp->st_nlink > 1 &&
       linkchk(p))
    break;

   curblocks = Aflag ?
       howmany(p->fts_statp->st_size, cblocksize) :
       howmany(p->fts_statp->st_blocks, cblocksize);

   if (aflag || p->fts_level == 0) {
    if (hflag > 0) {
     prthumanval(curblocks);
     (void)printf("\t%s\n", p->fts_path);
    } else {
     (void)printf("%jd\t%s\n",
         (intmax_t)howmany(curblocks *
         cblocksize, blocksize),
         p->fts_path);
    }
   }

   p->fts_parent->fts_bignum += curblocks;
  }
  savednumber = p->fts_parent->fts_bignum;
 }

 if (errno)
  err(1, "fts_read");

 if (cflag) {
  if (hflag > 0) {
   prthumanval(savednumber);
   (void)printf("\ttotal\n");
  } else {
   (void)printf("%jd\ttotal\n", (intmax_t)howmany(
       savednumber * cblocksize, blocksize));
  }
 }

 ignoreclean();
 exit(rval);
}

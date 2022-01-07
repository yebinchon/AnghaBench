
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FTS_COMFOLLOW ;
 int FTS_LOGICAL ;
 int FTS_NOCHDIR ;
 int FTS_NOSTAT ;
 int FTS_PHYSICAL ;
 int FTS_XDEV ;
 int LC_ALL ;
 int O_CLOEXEC ;
 int O_RDONLY ;
 int REG_EXTENDED ;
 int dotfd ;
 int exit (int ) ;
 int find_execute (int ,char**) ;
 int find_formplan (char**) ;
 int ftsoptions ;
 int getopt (int,char**,char*) ;
 int isdepth ;
 int issort ;
 int isxargs ;
 int now ;
 int open (char*,int,int ) ;
 int optarg ;
 scalar_t__ optind ;
 int regexp_flags ;
 int setlocale (int ,char*) ;
 int time (int *) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 char **p, **start;
 int Hflag, Lflag, ch;

 (void)setlocale(LC_ALL, "");

 (void)time(&now);

 p = start = argv;
 Hflag = Lflag = 0;
 ftsoptions = FTS_NOSTAT | FTS_PHYSICAL;
 while ((ch = getopt(argc, argv, "EHLPXdf:sx")) != -1)
  switch (ch) {
  case 'E':
   regexp_flags |= REG_EXTENDED;
   break;
  case 'H':
   Hflag = 1;
   Lflag = 0;
   break;
  case 'L':
   Lflag = 1;
   Hflag = 0;
   break;
  case 'P':
   Hflag = Lflag = 0;
   break;
  case 'X':
   isxargs = 1;
   break;
  case 'd':
   isdepth = 1;
   break;
  case 'f':
   *p++ = optarg;
   break;
  case 's':
   issort = 1;
   break;
  case 'x':
   ftsoptions |= FTS_XDEV;
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






 for (; *argv != ((void*)0); *p++ = *argv++) {
  if (argv[0][0] == '-')
   break;
  if ((argv[0][0] == '!' || argv[0][0] == '(') &&
      argv[0][1] == '\0')
   break;
 }

 if (p == start)
  usage();
 *p = ((void*)0);

 if ((dotfd = open(".", O_RDONLY | O_CLOEXEC, 0)) < 0)
  ftsoptions |= FTS_NOCHDIR;

 exit(find_execute(find_formplan(argv), start));
}

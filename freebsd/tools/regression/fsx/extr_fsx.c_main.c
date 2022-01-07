
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_nsec; } ;
typedef int ssize_t ;
typedef scalar_t__ off_t ;
typedef int logfile ;
typedef int goodfile ;


 int CLOCK_REALTIME ;
 int O_CREAT ;
 int O_RDWR ;
 int O_TRUNC ;
 int SEEK_END ;
 int SEEK_SET ;
 int SIGALRM ;
 int SIGHUP ;
 int SIGINT ;
 int SIGPIPE ;
 int SIGTERM ;
 int SIGUSR1 ;
 int SIGUSR2 ;
 int SIGVTALRM ;
 int SIGXCPU ;
 int SIGXFSZ ;
 int _IOLBF ;
 int check_trunc_hack () ;
 int cleanup ;
 int clock_gettime (int ,struct timespec*) ;
 scalar_t__ close (scalar_t__) ;
 int closeprob ;
 int debug ;
 int debugstart ;
 int err (int,char*) ;
 int exit (int) ;
 scalar_t__ fd ;
 scalar_t__ file_size ;
 char* fname ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ fsxgoodfd ;
 int * fsxlogf ;
 void* getnum (char*,char**) ;
 int getopt (int,char**,char*) ;
 scalar_t__ getpagesize () ;
 char* good_buf ;
 int initstate (int,int ,int) ;
 int invlprob ;
 int lite ;
 void* lseek (scalar_t__,scalar_t__,int ) ;
 scalar_t__ malloc (int) ;
 int mapped_msync ;
 int mapped_reads ;
 int mapped_writes ;
 int maxfilelen ;
 int maxoplen ;
 int memset (char*,char,int) ;
 int monitorend ;
 void* monitorstart ;
 int numops ;
 scalar_t__ open (char*,int,int) ;
 char* optarg ;
 scalar_t__ optind ;
 char* original_buf ;
 scalar_t__ page_mask ;
 scalar_t__ page_size ;
 void* progressinterval ;
 int prt (char*) ;
 int prterr (char*) ;
 int quiet ;
 int random () ;
 int randomoplen ;
 void* readbdy ;
 int report_failure (int) ;
 int seed ;
 int setstate (int ) ;
 int setvbuf (int ,char*,int ,int ) ;
 int signal (int ,int ) ;
 int simulatedopcount ;
 int sizechecks ;
 int state ;
 int stdout ;
 int strcat (char*,char*) ;
 int strncat (char*,char*,int) ;
 int strncpy (char*,char*,int) ;
 int style ;
 char* temp_buf ;
 int test () ;
 void* truncbdy ;
 int usage () ;
 int warn (char*,...) ;
 int write (scalar_t__,char*,size_t) ;
 void* writebdy ;

int
main(int argc, char **argv)
{
 int i, ch;
 char *endp;
 char goodfile[1024];
 char logfile[1024];
 struct timespec now;

 goodfile[0] = 0;
 logfile[0] = 0;

 page_size = getpagesize();
 page_mask = page_size - 1;

 setvbuf(stdout, (char *)0, _IOLBF, 0);

 while ((ch = getopt(argc, argv,
     "b:c:di:l:m:no:p:qr:s:t:w:D:LN:OP:RS:UW")) != -1)
  switch (ch) {
  case 'b':
   simulatedopcount = getnum(optarg, &endp);
   if (!quiet)
    fprintf(stdout, "Will begin at operation %ld\n",
     simulatedopcount);
   if (simulatedopcount == 0)
    usage();
   simulatedopcount -= 1;
   break;
  case 'c':
   closeprob = getnum(optarg, &endp);
   if (!quiet)
    fprintf(stdout,
     "Chance of close/open is 1 in %d\n",
     closeprob);
   if (closeprob <= 0)
    usage();
   break;
  case 'd':
   debug = 1;
   break;
  case 'i':
   invlprob = getnum(optarg, &endp);
   if (!quiet)
    fprintf(stdout,
     "Chance of MS_INVALIDATE is 1 in %d\n",
     invlprob);
   if (invlprob <= 0)
    usage();
   break;
  case 'l':
   maxfilelen = getnum(optarg, &endp);
   if (maxfilelen <= 0)
    usage();
   break;
  case 'm':
   monitorstart = getnum(optarg, &endp);
   if (monitorstart < 0)
    usage();
   if (!endp || *endp++ != ':')
    usage();
   monitorend = getnum(endp, &endp);
   if (monitorend < 0)
    usage();
   if (monitorend == 0)
    monitorend = -1;
   debug = 1;
  case 'n':
   sizechecks = 0;
   break;
  case 'o':
   maxoplen = getnum(optarg, &endp);
   if (maxoplen <= 0)
    usage();
   break;
  case 'p':
   progressinterval = getnum(optarg, &endp);
   if (progressinterval < 0)
    usage();
   break;
  case 'q':
   quiet = 1;
   break;
  case 'r':
   readbdy = getnum(optarg, &endp);
   if (readbdy <= 0)
    usage();
   break;
  case 's':
   style = getnum(optarg, &endp);
   if (style < 0 || style > 1)
    usage();
   break;
  case 't':
   truncbdy = getnum(optarg, &endp);
   if (truncbdy <= 0)
    usage();
   break;
  case 'w':
   writebdy = getnum(optarg, &endp);
   if (writebdy <= 0)
    usage();
   break;
  case 'D':
   debugstart = getnum(optarg, &endp);
   if (debugstart < 1)
    usage();
   break;
  case 'L':
   lite = 1;
   break;
  case 'N':
   numops = getnum(optarg, &endp);
   if (numops < 0)
    usage();
   break;
  case 'O':
   randomoplen = 0;
   break;
  case 'P':
   strncpy(goodfile, optarg, sizeof(goodfile));
   strcat(goodfile, "/");
   strncpy(logfile, optarg, sizeof(logfile));
   strcat(logfile, "/");
   break;
  case 'R':
   mapped_reads = 0;
   break;
  case 'S':
   seed = getnum(optarg, &endp);
   if (seed == 0) {
    if (clock_gettime(CLOCK_REALTIME, &now) != 0)
     err(1, "clock_gettime");
    seed = now.tv_nsec % 10000;
   }
   if (!quiet)
    fprintf(stdout, "Seed set to %d\n", seed);
   if (seed < 0)
    usage();
   break;
  case 'W':
   mapped_writes = 0;
   if (!quiet)
    fprintf(stdout, "mapped writes DISABLED\n");
   break;
  case 'U':
   mapped_msync = 0;
   if (!quiet)
    fprintf(stdout, "mapped msync DISABLED\n");
   break;

  default:
   usage();

  }
 argc -= optind;
 argv += optind;
 if (argc != 1)
  usage();
 fname = argv[0];

 signal(SIGHUP, cleanup);
 signal(SIGINT, cleanup);
 signal(SIGPIPE, cleanup);
 signal(SIGALRM, cleanup);
 signal(SIGTERM, cleanup);
 signal(SIGXCPU, cleanup);
 signal(SIGXFSZ, cleanup);
 signal(SIGVTALRM, cleanup);
 signal(SIGUSR1, cleanup);
 signal(SIGUSR2, cleanup);

 initstate(seed, state, 256);
 setstate(state);
 fd = open(fname, O_RDWR|(lite ? 0 : O_CREAT|O_TRUNC), 0666);
 if (fd < 0) {
  prterr(fname);
  exit(91);
 }
 strncat(goodfile, fname, 256);
 strcat (goodfile, ".fsxgood");
 fsxgoodfd = open(goodfile, O_RDWR|O_CREAT|O_TRUNC, 0666);
 if (fsxgoodfd < 0) {
  prterr(goodfile);
  exit(92);
 }
 strncat(logfile, fname, 256);
 strcat (logfile, ".fsxlog");
 fsxlogf = fopen(logfile, "w");
 if (fsxlogf == ((void*)0)) {
  prterr(logfile);
  exit(93);
 }
 if (lite) {
  off_t ret;
  file_size = maxfilelen = lseek(fd, (off_t)0, SEEK_END);
  if (file_size == (off_t)-1) {
   prterr(fname);
   warn("main: lseek eof");
   exit(94);
  }
  ret = lseek(fd, (off_t)0, SEEK_SET);
  if (ret == (off_t)-1) {
   prterr(fname);
   warn("main: lseek 0");
   exit(95);
  }
 }
 original_buf = (char *) malloc(maxfilelen);
 for (i = 0; i < maxfilelen; i++)
  original_buf[i] = random() % 256;
 good_buf = (char *) malloc(maxfilelen);
 memset(good_buf, '\0', maxfilelen);
 temp_buf = (char *) malloc(maxoplen);
 memset(temp_buf, '\0', maxoplen);
 if (lite) {
  ssize_t written;

  written = write(fd, good_buf, (size_t)maxfilelen);
  if (written != maxfilelen) {
   if (written == -1) {
    prterr(fname);
    warn("main: error on write");
   } else
    warn("main: short write, 0x%x bytes instead of 0x%lx\n",
         (unsigned)written, maxfilelen);
   exit(98);
  }
 } else
  check_trunc_hack();

 while (numops == -1 || numops--)
  test();

 if (close(fd)) {
  prterr("close");
  report_failure(99);
 }
 prt("All operations completed A-OK!\n");

 exit(0);
 return 0;
}

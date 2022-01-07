
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct stat {int st_mode; } ;
struct TYPE_15__ {int (* make_fs ) (char*,char const*,int *,TYPE_2__*) ;int (* prepare_options ) (TYPE_2__*) ;int (* cleanup_options ) (TYPE_2__*) ;int (* parse_options ) (char*,TYPE_2__*) ;} ;
typedef TYPE_1__ fstype_t ;
typedef int fsoptions ;
typedef int fsnode ;
struct TYPE_16__ {int fd; int sectorsize; int needswap; int sparse; int onlyspec; int * fs_specific; void* maxsize; void* minsize; void* roundup; void* offset; void* freefiles; void* freefilepc; void* freeblocks; void* freeblockpc; } ;
typedef TYPE_2__ fsinfo_t ;
struct TYPE_14__ {int tv_nsec; scalar_t__ tv_sec; } ;


 int CLOCK_REALTIME ;
 int DEBUG_DUMP_FSNODES ;
 char* DEFAULT_FSTYPE ;
 int INT_MAX ;
 int LLONG_MAX ;

 int S_IFMT ;

 int S_ISDIR (int) ;
 int TIMER_RESULTS (struct timeval,char*) ;
 int TIMER_START (struct timeval) ;
 int apply_specfile (char const*,char const*,int *,scalar_t__) ;
 int clock_gettime (int ,TYPE_10__*) ;
 int ctime (scalar_t__*) ;
 int debug ;
 int dump_fsnodes (int *) ;
 int dupsok ;
 int err (int,char*,...) ;
 int errx (int,char*,...) ;
 int exit (int ) ;
 int free_fsnodes (int *) ;
 TYPE_1__* get_fstype (char*) ;
 int get_tstamp (char*,int *) ;
 int getopt (int,char**,char*) ;
 int gettimeofday (struct timeval*,int *) ;
 int memset (TYPE_2__*,int ,int) ;
 char* optarg ;
 scalar_t__ optind ;
 int printf (char*,...) ;
 int putchar (char) ;
 int * read_mtree (char*,int *) ;
 int setprogname (char*) ;
 int setup_getid (char*) ;
 int stampst ;
 TYPE_10__ start_time ;
 int stat (char*,struct stat*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;
 char* strsep (char**,char*) ;
 void* strsuftoll (char*,char*,long long,int) ;
 int strtoll (char*,int *,int ) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (char*,TYPE_2__*) ;
 int stub3 (TYPE_2__*) ;
 int stub4 (TYPE_2__*) ;
 int stub5 (char*,char const*,int *,TYPE_2__*) ;
 int usage (TYPE_1__*,TYPE_2__*) ;
 int * walk_dir (char const*,char*,int *,int *) ;
 int warnx (char*,char*) ;

int
main(int argc, char *argv[])
{
 struct stat sb;
 struct timeval start;
 fstype_t *fstype;
 fsinfo_t fsoptions;
 fsnode *root;
 int ch, i, len;
 const char *subtree;
 const char *specfile;

 setprogname(argv[0]);

 debug = 0;
 if ((fstype = get_fstype(DEFAULT_FSTYPE)) == ((void*)0))
  errx(1, "Unknown default fs type `%s'.", DEFAULT_FSTYPE);


 (void)memset(&fsoptions, 0, sizeof(fsoptions));
 fsoptions.fd = -1;
 fsoptions.sectorsize = -1;

 if (fstype->prepare_options)
  fstype->prepare_options(&fsoptions);

 specfile = ((void*)0);



 ch = gettimeofday(&start, ((void*)0));
 start_time.tv_sec = start.tv_sec;
 start_time.tv_nsec = start.tv_usec * 1000;

 if (ch == -1)
  err(1, "Unable to get system time");


 while ((ch = getopt(argc, argv, "B:b:Dd:f:F:M:m:N:O:o:pR:s:S:t:T:xZ")) != -1) {
  switch (ch) {

  case 'B':
   if (strcmp(optarg, "be") == 0 ||
       strcmp(optarg, "4321") == 0 ||
       strcmp(optarg, "big") == 0) {

    fsoptions.needswap = 1;

   } else if (strcmp(optarg, "le") == 0 ||
       strcmp(optarg, "1234") == 0 ||
       strcmp(optarg, "little") == 0) {

    fsoptions.needswap = 1;

   } else {
    warnx("Invalid endian `%s'.", optarg);
    usage(fstype, &fsoptions);
   }
   break;

  case 'b':
   len = strlen(optarg) - 1;
   if (optarg[len] == '%') {
    optarg[len] = '\0';
    fsoptions.freeblockpc =
        strsuftoll("free block percentage",
     optarg, 0, 99);
   } else {
    fsoptions.freeblocks =
        strsuftoll("free blocks",
     optarg, 0, LLONG_MAX);
   }
   break;

  case 'D':
   dupsok = 1;
   break;

  case 'd':
   debug = strtoll(optarg, ((void*)0), 0);
   break;

  case 'f':
   len = strlen(optarg) - 1;
   if (optarg[len] == '%') {
    optarg[len] = '\0';
    fsoptions.freefilepc =
        strsuftoll("free file percentage",
     optarg, 0, 99);
   } else {
    fsoptions.freefiles =
        strsuftoll("free files",
     optarg, 0, LLONG_MAX);
   }
   break;

  case 'F':
   specfile = optarg;
   break;

  case 'M':
   fsoptions.minsize =
       strsuftoll("minimum size", optarg, 1LL, LLONG_MAX);
   break;

  case 'N':
   if (! setup_getid(optarg))
    errx(1,
       "Unable to use user and group databases in `%s'",
        optarg);
   break;

  case 'm':
   fsoptions.maxsize =
       strsuftoll("maximum size", optarg, 1LL, LLONG_MAX);
   break;

  case 'O':
   fsoptions.offset =
       strsuftoll("offset", optarg, 0LL, LLONG_MAX);
   break;

  case 'o':
  {
   char *p;

   while ((p = strsep(&optarg, ",")) != ((void*)0)) {
    if (*p == '\0')
     errx(1, "Empty option");
    if (! fstype->parse_options(p, &fsoptions))
     usage(fstype, &fsoptions);
   }
   break;
  }
  case 'p':

   fsoptions.sparse = 1;
   break;

  case 'R':

   fsoptions.roundup =
       strsuftoll("roundup-size", optarg, 0, LLONG_MAX);
   break;

  case 's':
   fsoptions.minsize = fsoptions.maxsize =
       strsuftoll("size", optarg, 1LL, LLONG_MAX);
   break;

  case 'S':
   fsoptions.sectorsize =
       (int)strsuftoll("sector size", optarg,
    1LL, INT_MAX);
   break;

  case 't':

   if (fstype->cleanup_options)
    fstype->cleanup_options(&fsoptions);
   fsoptions.fs_specific = ((void*)0);
   if ((fstype = get_fstype(optarg)) == ((void*)0))
    errx(1, "Unknown fs type `%s'.", optarg);
   fstype->prepare_options(&fsoptions);
   break;

  case 'T':
   if (get_tstamp(optarg, &stampst) == -1)
    errx(1, "Cannot get timestamp from `%s'",
        optarg);
   break;

  case 'x':
   fsoptions.onlyspec = 1;
   break;

  case 'Z':

   fsoptions.sparse = 1;
   break;

  case '?':
  default:
   usage(fstype, &fsoptions);


  }
 }
 if (debug) {
  printf("debug mask: 0x%08x\n", debug);
  printf("start time: %ld.%ld, %s",
      (long)start_time.tv_sec, (long)start_time.tv_nsec,
      ctime(&start_time.tv_sec));
 }
 argc -= optind;
 argv += optind;

 if (argc < 2)
  usage(fstype, &fsoptions);


 if (fsoptions.onlyspec != 0 && specfile == ((void*)0))
  errx(1, "-x requires -F mtree-specfile.");


 if (strcmp(argv[1], "-") == 0)
  sb.st_mode = 128;
 else {
  if (stat(argv[1], &sb) == -1)
   err(1, "Can't stat `%s'", argv[1]);
 }

 switch (sb.st_mode & S_IFMT) {
 case 129:
  subtree = argv[1];
  TIMER_START(start);
  root = walk_dir(subtree, ".", ((void*)0), ((void*)0));
  TIMER_RESULTS(start, "walk_dir");
  break;
 case 128:
  subtree = ".";
  TIMER_START(start);
  root = read_mtree(argv[1], ((void*)0));
  TIMER_RESULTS(start, "manifest");
  break;
 default:
  errx(1, "%s: not a file or directory", argv[1]);

 }


 for (i = 2; i < argc; i++) {
  if (stat(argv[i], &sb) == -1)
   err(1, "Can't stat `%s'", argv[i]);
  if (!S_ISDIR(sb.st_mode))
   errx(1, "%s: not a directory", argv[i]);
  TIMER_START(start);
  root = walk_dir(argv[i], ".", ((void*)0), root);
  TIMER_RESULTS(start, "walk_dir2");
 }

 if (specfile) {
  TIMER_START(start);
  apply_specfile(specfile, subtree, root, fsoptions.onlyspec);
  TIMER_RESULTS(start, "apply_specfile");
 }

 if (debug & DEBUG_DUMP_FSNODES) {
  printf("\nparent: %s\n", subtree);
  dump_fsnodes(root);
  putchar('\n');
 }


 TIMER_START(start);
 fstype->make_fs(argv[0], subtree, root, &fsoptions);
 TIMER_RESULTS(start, "make_fs");

 free_fsnodes(root);

 exit(0);

}

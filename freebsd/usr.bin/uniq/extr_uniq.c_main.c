
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int cap_rights_t ;
typedef int FILE ;


 int CAP_FSTAT ;
 int CAP_IOCTL ;
 int CAP_READ ;
 int CAP_WRITE ;
 int LC_ALL ;
 unsigned long TIOCGETA ;
 int cap_rights_init (int *,int ,int ) ;
 scalar_t__ cap_rights_is_set (int *,int ) ;
 int cap_rights_set (int *,int ) ;
 int caph_cache_catpages () ;
 scalar_t__ caph_enter () ;
 scalar_t__ caph_ioctls_limit (int ,unsigned long*,int) ;
 scalar_t__ caph_rights_limit (int ,int *) ;
 int cflag ;
 int * convert (char*) ;
 int dflag ;
 int err (int,char*,...) ;
 int errx (int,char*,int ) ;
 int exit (int ) ;
 scalar_t__ ferror (int *) ;
 int * file (char const*,char*) ;
 int fileno (int *) ;
 int free (int *) ;
 scalar_t__ getline (char**,size_t*,int *) ;
 int getopt_long (int,char**,char*,int ,int *) ;
 int iflag ;
 int inlcmp (char*,char*) ;
 int long_opts ;
 void* numchars ;
 void* numfields ;
 int obsolete (char**) ;
 int optarg ;
 scalar_t__ optind ;
 scalar_t__ repeats ;
 int setlocale (int ,char*) ;
 int show (int *,char*) ;
 int * stdin ;
 int * stdout ;
 scalar_t__ strcmp (char*,char*) ;
 void* strtol (int ,char**,int) ;
 int uflag ;
 int usage () ;
 int wcscoll (int *,int *) ;

int
main (int argc, char *argv[])
{
 wchar_t *tprev, *tthis;
 FILE *ifp, *ofp;
 int ch, comp;
 size_t prevbuflen, thisbuflen, b1;
 char *prevline, *thisline, *p;
 const char *ifn;
 cap_rights_t rights;

 (void) setlocale(LC_ALL, "");

 obsolete(argv);
 while ((ch = getopt_long(argc, argv, "+cdif:s:u", long_opts,
     ((void*)0))) != -1)
  switch (ch) {
  case 'c':
   cflag = 1;
   break;
  case 'd':
   dflag = 1;
   break;
  case 'i':
   iflag = 1;
   break;
  case 'f':
   numfields = strtol(optarg, &p, 10);
   if (numfields < 0 || *p)
    errx(1, "illegal field skip value: %s", optarg);
   break;
  case 's':
   numchars = strtol(optarg, &p, 10);
   if (numchars < 0 || *p)
    errx(1, "illegal character skip value: %s", optarg);
   break;
  case 'u':
   uflag = 1;
   break;
  case '?':
  default:
   usage();
  }

 argc -= optind;
 argv += optind;

 if (argc > 2)
  usage();

 ifp = stdin;
 ifn = "stdin";
 ofp = stdout;
 if (argc > 0 && strcmp(argv[0], "-") != 0)
  ifp = file(ifn = argv[0], "r");
 cap_rights_init(&rights, CAP_FSTAT, CAP_READ);
 if (caph_rights_limit(fileno(ifp), &rights) < 0)
  err(1, "unable to limit rights for %s", ifn);
 cap_rights_init(&rights, CAP_FSTAT, CAP_WRITE);
 if (argc > 1)
  ofp = file(argv[1], "w");
 else
  cap_rights_set(&rights, CAP_IOCTL);
 if (caph_rights_limit(fileno(ofp), &rights) < 0) {
  err(1, "unable to limit rights for %s",
      argc > 1 ? argv[1] : "stdout");
 }
 if (cap_rights_is_set(&rights, CAP_IOCTL)) {
  unsigned long cmd;

  cmd = TIOCGETA;

  if (caph_ioctls_limit(fileno(ofp), &cmd, 1) < 0) {
   err(1, "unable to limit ioctls for %s",
       argc > 1 ? argv[1] : "stdout");
  }
 }

 caph_cache_catpages();
 if (caph_enter() < 0)
  err(1, "unable to enter capability mode");

 prevbuflen = thisbuflen = 0;
 prevline = thisline = ((void*)0);

 if (getline(&prevline, &prevbuflen, ifp) < 0) {
  if (ferror(ifp))
   err(1, "%s", ifn);
  exit(0);
 }
 tprev = convert(prevline);

 tthis = ((void*)0);
 while (getline(&thisline, &thisbuflen, ifp) >= 0) {
  if (tthis != ((void*)0))
   free(tthis);
  tthis = convert(thisline);

  if (tthis == ((void*)0) && tprev == ((void*)0))
   comp = inlcmp(thisline, prevline);
  else if (tthis == ((void*)0) || tprev == ((void*)0))
   comp = 1;
  else
   comp = wcscoll(tthis, tprev);

  if (comp) {

   show(ofp, prevline);
   p = prevline;
   b1 = prevbuflen;
   prevline = thisline;
   prevbuflen = thisbuflen;
   if (tprev != ((void*)0))
    free(tprev);
   tprev = tthis;
   thisline = p;
   thisbuflen = b1;
   tthis = ((void*)0);
   repeats = 0;
  } else
   ++repeats;
 }
 if (ferror(ifp))
  err(1, "%s", ifn);
 show(ofp, prevline);
 exit(0);
}

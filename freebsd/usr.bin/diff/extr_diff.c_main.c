
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int buf ;
struct TYPE_5__ {int st_mode; } ;


 int BUFSIZ ;
 scalar_t__ D_BRIEF ;
 scalar_t__ D_CONTEXT ;
 scalar_t__ D_EDIT ;
 int D_EXPANDTABS ;
 int D_FOLDBLANKS ;
 int D_FORCEASCII ;
 scalar_t__ D_GFORMAT ;
 scalar_t__ D_IFDEF ;
 int D_IGNOREBLANKS ;
 int D_IGNORECASE ;
 int D_MINIMAL ;
 scalar_t__ D_NORMAL ;
 scalar_t__ D_NREVERSE ;
 int D_PROTOTYPE ;
 scalar_t__ D_REVERSE ;
 int D_SKIPBLANKLINES ;
 int D_STRIPCR ;
 scalar_t__ D_UNIFIED ;
 int INT_MAX ;
 int Nflag ;
 int OPTIONS ;







 int Pflag ;
 int REG_EXTENDED ;
 int REG_NEWLINE ;
 int STDIN_FILENO ;
 scalar_t__ S_ISDIR (int ) ;
 int Tflag ;
 int cflag ;
 int diff_context ;
 scalar_t__ diff_format ;
 int diffdir (char*,char*,int) ;
 int diffreg (char*,char*,int,int) ;
 int err (int,char*,...) ;
 int errx (int,char*,...) ;
 int exit (int ) ;
 int fstat (int ,TYPE_1__*) ;
 int getopt_long (int,char**,int ,int ,int *) ;
 int * group_format ;
 int * ifdefname ;
 int ignore_file_case ;
 char* ignore_pats ;
 int ignore_re ;
 int isdigit (int) ;
 int ** label ;
 int lflag ;
 int longopts ;
 int * optarg ;
 int optind ;
 int pledge (char*,int *) ;
 int print_status (int ,char*,char*,char*) ;
 int push_excludes (int *) ;
 int push_ignore_pats (int *) ;
 int read_excludes_file (int *) ;
 int regcomp (int *,char*,int) ;
 int regerror (int,int *,char*,int) ;
 int rflag ;
 int set_argstr (char**,char**) ;
 int sflag ;
 char* splice (char*,char*) ;
 int * start ;
 scalar_t__ stat (char*,TYPE_1__*) ;
 int status ;
 TYPE_1__ stb1 ;
 TYPE_1__ stb2 ;
 scalar_t__ strcmp (char*,char*) ;
 long strtol (int *,char**,int) ;
 scalar_t__ strtonum (int *,int,int,char const**) ;
 int tabsize ;
 int usage () ;
 int warnx (char*) ;

int
main(int argc, char **argv)
{
 const char *errstr = ((void*)0);
 char *ep, **oargv;
 long l;
 int ch, dflags, lastch, gotstdin, prevoptind, newarg;

 oargv = argv;
 gotstdin = 0;
 dflags = 0;
 lastch = '\0';
 prevoptind = 1;
 newarg = 1;
 diff_context = 3;
 diff_format = 0;
 while ((ch = getopt_long(argc, argv, OPTIONS, longopts, ((void*)0))) != -1) {
  switch (ch) {
  case '0': case '1': case '2': case '3': case '4':
  case '5': case '6': case '7': case '8': case '9':
   if (newarg)
    usage();
   else if (lastch == 'c' || lastch == 'u')
    diff_context = 0;
   else if (!isdigit(lastch) || diff_context > INT_MAX / 10)
    usage();
   diff_context = (diff_context * 10) + (ch - '0');
   break;
  case 'a':
   dflags |= D_FORCEASCII;
   break;
  case 'b':
   dflags |= D_FOLDBLANKS;
   break;
  case 'C':
  case 'c':
   cflag = 1;
   diff_format = D_CONTEXT;
   if (optarg != ((void*)0)) {
    l = strtol(optarg, &ep, 10);
    if (*ep != '\0' || l < 0 || l >= INT_MAX)
     usage();
    diff_context = (int)l;
   }
   break;
  case 'd':
   dflags |= D_MINIMAL;
   break;
  case 'D':
   diff_format = D_IFDEF;
   ifdefname = optarg;
   break;
  case 'e':
   diff_format = D_EDIT;
   break;
  case 'f':
   diff_format = D_REVERSE;
   break;
  case 'H':

   break;
  case 'h':

   break;
  case 'B':
   dflags |= D_SKIPBLANKLINES;
   break;
  case 'I':
   push_ignore_pats(optarg);
   break;
  case 'i':
   dflags |= D_IGNORECASE;
   break;
  case 'L':
   if (label[0] == ((void*)0))
    label[0] = optarg;
   else if (label[1] == ((void*)0))
    label[1] = optarg;
   else
    usage();
   break;
  case 'l':
   lflag = 1;
   break;
  case 'N':
   Nflag = 1;
   break;
  case 'n':
   diff_format = D_NREVERSE;
   break;
  case 'p':
   if (diff_format == 0)
    diff_format = D_CONTEXT;
   dflags |= D_PROTOTYPE;
   break;
  case 'P':
   Pflag = 1;
   break;
  case 'r':
   rflag = 1;
   break;
  case 'q':
   diff_format = D_BRIEF;
   break;
  case 'S':
   start = optarg;
   break;
  case 's':
   sflag = 1;
   break;
  case 'T':
   Tflag = 1;
   break;
  case 't':
   dflags |= D_EXPANDTABS;
   break;
  case 'U':
  case 'u':
   diff_format = D_UNIFIED;
   if (optarg != ((void*)0)) {
    l = strtol(optarg, &ep, 10);
    if (*ep != '\0' || l < 0 || l >= INT_MAX)
     usage();
    diff_context = (int)l;
   }
   break;
  case 'w':
   dflags |= D_IGNOREBLANKS;
   break;
  case 'X':
   read_excludes_file(optarg);
   break;
  case 'x':
   push_excludes(optarg);
   break;
  case 134:
   diff_format = D_GFORMAT;
   group_format = optarg;
   break;
  case 133:
   break;
  case 132:
   ignore_file_case = 1;
   break;
  case 130:
   ignore_file_case = 0;
   break;
  case 131:
   diff_format = D_NORMAL;
   break;
  case 128:
   tabsize = (int) strtonum(optarg, 1, INT_MAX, &errstr);
   if (errstr) {
    warnx("Invalid argument for tabsize");
    usage();
   }
   break;
  case 129:
   dflags |= D_STRIPCR;
   break;
  default:
   usage();
   break;
  }
  lastch = ch;
  newarg = optind != prevoptind;
  prevoptind = optind;
 }
 argc -= optind;
 argv += optind;
 if (argc != 2)
  usage();
 if (ignore_pats != ((void*)0)) {
  char buf[BUFSIZ];
  int error;

  if ((error = regcomp(&ignore_re, ignore_pats,
         REG_NEWLINE | REG_EXTENDED)) != 0) {
   regerror(error, &ignore_re, buf, sizeof(buf));
   if (*ignore_pats != '\0')
    errx(2, "%s: %s", ignore_pats, buf);
   else
    errx(2, "%s", buf);
  }
 }
 if (strcmp(argv[0], "-") == 0) {
  fstat(STDIN_FILENO, &stb1);
  gotstdin = 1;
 } else if (stat(argv[0], &stb1) != 0)
  err(2, "%s", argv[0]);
 if (strcmp(argv[1], "-") == 0) {
  fstat(STDIN_FILENO, &stb2);
  gotstdin = 1;
 } else if (stat(argv[1], &stb2) != 0)
  err(2, "%s", argv[1]);
 if (gotstdin && (S_ISDIR(stb1.st_mode) || S_ISDIR(stb2.st_mode)))
  errx(2, "can't compare - to a directory");
 set_argstr(oargv, argv);
 if (S_ISDIR(stb1.st_mode) && S_ISDIR(stb2.st_mode)) {
  if (diff_format == D_IFDEF)
   errx(2, "-D option not supported with directories");
  diffdir(argv[0], argv[1], dflags);
 } else {
  if (S_ISDIR(stb1.st_mode)) {
   argv[0] = splice(argv[0], argv[1]);
   if (stat(argv[0], &stb1) < 0)
    err(2, "%s", argv[0]);
  }
  if (S_ISDIR(stb2.st_mode)) {
   argv[1] = splice(argv[1], argv[0]);
   if (stat(argv[1], &stb2) < 0)
    err(2, "%s", argv[1]);
  }
  print_status(diffreg(argv[0], argv[1], dflags, 1), argv[0],
      argv[1], "");
 }
 exit(status);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unittype {int dummy; } ;
typedef int History ;
typedef int HistEvent ;
typedef int EditLine ;


 int EL_EDITOR ;
 int EL_HIST ;
 int EL_PROMPT ;
 int EL_SIGNAL ;
 int F_OK ;
 int H_ENTER ;
 int H_SETSIZE ;
 char* UNITSFILE ;
 int access (char*,int ) ;
 scalar_t__ addunit (struct unittype*,char*,int ,int) ;
 scalar_t__ caph_enter () ;
 scalar_t__ completereduce (struct unittype*) ;
 int el_end (int *) ;
 char* el_gets (int *,int*) ;
 int * el_init (char*,int ,int ,int ) ;
 int el_set (int *,int ,...) ;
 int el_source (int *,int *) ;
 int err (int,char*) ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int getopt_long (int,char**,char*,int ,int *) ;
 char* havestr ;
 int history (int *,int *,int ,...) ;
 int history_end (int *) ;
 int * history_init () ;
 int initializeunit (struct unittype*) ;
 int longopts ;
 char* numfmt ;
 char* optarg ;
 int optind ;
 char* outputformat ;
 int prefixcount ;
 int printf (char*,...) ;
 int prompt ;
 char* promptstr ;
 int readunits (char*) ;
 int showanswer (struct unittype*,struct unittype*) ;
 int stderr ;
 int stdin ;
 int stdout ;
 int strlen (char*) ;
 int terse ;
 int unitcount ;
 int usage () ;
 int verbose ;
 char* wantstr ;

int
main(int argc, char **argv)
{

 struct unittype have, want;
 int optchar;
 bool quiet;
 bool readfile;
 bool quit;
 History *inhistory;
 EditLine *el;
 HistEvent ev;
 int inputsz;
 char const * history_file;

 quiet = 0;
 readfile = 0;
 history_file = ((void*)0);
 outputformat = numfmt;
 quit = 0;
 while ((optchar = getopt_long(argc, argv, "+ehf:o:qtvH:UV", longopts, ((void*)0))) != -1) {
  switch (optchar) {
  case 'e':
   outputformat = "%6e";
   break;
  case 'f':
   readfile = 1;
   if (strlen(optarg) == 0)
    readunits(((void*)0));
   else
    readunits(optarg);
   break;
  case 'H':
   history_file = optarg;
   break;
  case 'q':
   quiet = 1;
   break;
  case 't':
   terse = 1;
   break;
  case 'o':
   outputformat = optarg;
   break;
  case 'v':
   verbose = 1;
   break;
  case 'V':
   fprintf(stderr, "FreeBSD units\n");

  case 'U':
   if (access(UNITSFILE, F_OK) == 0)
    printf("%s\n", UNITSFILE);
   else
    printf("Units data file not found");
   exit(0);
  case 'h':


  default:
   usage();
  }
 }

 if (!readfile)
  readunits(((void*)0));

 if (optind == argc - 2) {
  if (caph_enter() < 0)
   err(1, "unable to enter capability mode");

  havestr = argv[optind];
  wantstr = argv[optind + 1];
  initializeunit(&have);
  addunit(&have, havestr, 0, 1);
  completereduce(&have);
  initializeunit(&want);
  addunit(&want, wantstr, 0, 1);
  completereduce(&want);
  showanswer(&have, &want);
 } else {
  inhistory = history_init();
  el = el_init(argv[0], stdin, stdout, stderr);
  el_set(el, EL_PROMPT, &prompt);
  el_set(el, EL_EDITOR, "emacs");
  el_set(el, EL_SIGNAL, 1);
  el_set(el, EL_HIST, history, inhistory);
  el_source(el, ((void*)0));
  history(inhistory, &ev, H_SETSIZE, 800);
  if (inhistory == 0)
   err(1, "Could not initialize history");

  if (caph_enter() < 0)
   err(1, "unable to enter capability mode");

  if (!quiet)
   printf("%d units, %d prefixes\n", unitcount,
       prefixcount);
  while (!quit) {
   do {
    initializeunit(&have);
    if (!quiet)
     promptstr = "You have: ";
    havestr = el_gets(el, &inputsz);
    if (havestr == ((void*)0)) {
     quit = 1;
     break;
    }
    if (inputsz > 0)
     history(inhistory, &ev, H_ENTER,
     havestr);
   } while (addunit(&have, havestr, 0, 1) ||
       completereduce(&have));
   if (quit) {
    break;
   }
   do {
    initializeunit(&want);
    if (!quiet)
     promptstr = "You want: ";
    wantstr = el_gets(el, &inputsz);
    if (wantstr == ((void*)0)) {
     quit = 1;
     break;
    }
    if (inputsz > 0)
     history(inhistory, &ev, H_ENTER,
     wantstr);
   } while (addunit(&want, wantstr, 0, 1) ||
       completereduce(&want));
   if (quit) {
    break;
   }
   showanswer(&have, &want);
  }

  history_end(inhistory);
  el_end(el);
 }

 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cap_rights_t ;


 int CAP_FSTAT ;
 int CAP_READ ;
 int FA_OPEN ;
 int LC_CTYPE ;
 int O_RDONLY ;
 int SIGINFO ;
 int XO_STYLE_TEXT ;
 int cap_rights_init (int *,int ,int ) ;
 int caph_cache_catpages () ;
 scalar_t__ caph_enter_casper () ;
 scalar_t__ caph_limit_stdio () ;
 scalar_t__ cnt (char*) ;
 scalar_t__ dochar ;
 scalar_t__ doline ;
 scalar_t__ dolongline ;
 scalar_t__ domulti ;
 scalar_t__ doword ;
 int exit (int) ;
 int * fa ;
 int fileargs_free (int *) ;
 int * fileargs_init (int,char**,int ,int ,int ,int ) ;
 int getopt (int,char**,char*) ;
 scalar_t__ optind ;
 int setlocale (int ,char*) ;
 int show_cnt (char*,int ,int ,int ,int ) ;
 int siginfo_handler ;
 int signal (int ,int ) ;
 int stderr ;
 int stderr_handle ;
 int tcharct ;
 int tlinect ;
 int tlongline ;
 int twordct ;
 int usage () ;
 int xo_close_container (char*) ;
 int xo_close_instance (char*) ;
 int xo_close_list (char*) ;
 int xo_create_to_file (int ,int ,int ) ;
 int xo_finish () ;
 int xo_open_container (char*) ;
 int xo_open_instance (char*) ;
 int xo_open_list (char*) ;
 int xo_parse_args (int,char**) ;
 int xo_warn (char*) ;

int
main(int argc, char *argv[])
{
 int ch, errors, total;
 cap_rights_t rights;

 (void) setlocale(LC_CTYPE, "");

 argc = xo_parse_args(argc, argv);
 if (argc < 0)
  return (argc);

 while ((ch = getopt(argc, argv, "clmwL")) != -1)
  switch((char)ch) {
  case 'l':
   doline = 1;
   break;
  case 'w':
   doword = 1;
   break;
  case 'c':
   dochar = 1;
   domulti = 0;
   break;
  case 'L':
   dolongline = 1;
   break;
  case 'm':
   domulti = 1;
   dochar = 0;
   break;
  case '?':
  default:
   usage();
  }
 argv += optind;
 argc -= optind;

 (void)signal(SIGINFO, siginfo_handler);

 fa = fileargs_init(argc, argv, O_RDONLY, 0,
     cap_rights_init(&rights, CAP_READ, CAP_FSTAT), FA_OPEN);
 if (fa == ((void*)0)) {
  xo_warn("Unable to init casper");
  exit(1);
 }

 caph_cache_catpages();
 if (caph_limit_stdio() < 0) {
  xo_warn("Unable to limit stdio");
  fileargs_free(fa);
  exit(1);
 }

 if (caph_enter_casper() < 0) {
  xo_warn("Unable to enter capability mode");
  fileargs_free(fa);
  exit(1);
 }


 if (doline + doword + dochar + domulti + dolongline == 0)
  doline = doword = dochar = 1;

 stderr_handle = xo_create_to_file(stderr, XO_STYLE_TEXT, 0);
 xo_open_container("wc");
 xo_open_list("file");

 errors = 0;
 total = 0;
 if (!*argv) {
   xo_open_instance("file");
  if (cnt((char *)((void*)0)) != 0)
   ++errors;
   xo_close_instance("file");
 } else {
  do {
    xo_open_instance("file");
   if (cnt(*argv) != 0)
    ++errors;
    xo_close_instance("file");
   ++total;
  } while(*++argv);
 }

 xo_close_list("file");

 if (total > 1) {
  xo_open_container("total");
  show_cnt("total", tlinect, twordct, tcharct, tlongline);
  xo_close_container("total");
 }

 fileargs_free(fa);
 xo_close_container("wc");
 xo_finish();
 exit(errors == 0 ? 0 : 1);
}

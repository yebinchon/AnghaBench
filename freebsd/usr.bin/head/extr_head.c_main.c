
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;
typedef int fileargs_t ;
typedef int cap_rights_t ;
typedef int FILE ;


 int CAP_FCNTL ;
 int CAP_FSTAT ;
 int CAP_READ ;
 int FA_OPEN ;
 int O_RDONLY ;
 int cap_rights_init (int *,int ,int ,int ) ;
 int caph_cache_catpages () ;
 scalar_t__ caph_enter_casper () ;
 scalar_t__ caph_limit_stdio () ;
 int err (int,char*) ;
 int errx (int,char*,...) ;
 int exit (int) ;
 int fclose (int *) ;
 int * fileargs_fopen (int *,char*,char*) ;
 int fileargs_free (int *) ;
 int * fileargs_init (int,char**,int ,int ,int ,int ) ;
 int getopt_long (int,char**,char*,int ,int *) ;
 int head (int *,int) ;
 int head_bytes (int *,int) ;
 int long_opts ;
 int obsolete (char**) ;
 int optarg ;
 scalar_t__ optind ;
 int printf (char*,char*,char*) ;
 int * stdin ;
 int strtoimax (int ,char**,int) ;
 int strtol (int ,char**,int) ;
 int usage () ;
 int warn (char*,char*) ;

int
main(int argc, char *argv[])
{
 FILE *fp;
 char *ep;
 off_t bytecnt;
 int ch, first, linecnt, eval;
 fileargs_t *fa;
 cap_rights_t rights;

 linecnt = -1;
 eval = 0;
 bytecnt = -1;

 obsolete(argv);
 while ((ch = getopt_long(argc, argv, "+n:c:", long_opts, ((void*)0))) != -1) {
  switch(ch) {
  case 'c':
   bytecnt = strtoimax(optarg, &ep, 10);
   if (*ep || bytecnt <= 0)
    errx(1, "illegal byte count -- %s", optarg);
   break;
  case 'n':
   linecnt = strtol(optarg, &ep, 10);
   if (*ep || linecnt <= 0)
    errx(1, "illegal line count -- %s", optarg);
   break;
  case '?':
  default:
   usage();

  }
 }
 argc -= optind;
 argv += optind;

 fa = fileargs_init(argc, argv, O_RDONLY, 0,
     cap_rights_init(&rights, CAP_READ, CAP_FSTAT, CAP_FCNTL), FA_OPEN);
 if (fa == ((void*)0))
  err(1, "unable to init casper");

 caph_cache_catpages();
 if (caph_limit_stdio() < 0 || caph_enter_casper() < 0)
  err(1, "unable to enter capability mode");

 if (linecnt != -1 && bytecnt != -1)
  errx(1, "can't combine line and byte counts");
 if (linecnt == -1)
  linecnt = 10;
 if (*argv != ((void*)0)) {
  for (first = 1; *argv != ((void*)0); ++argv) {
   if ((fp = fileargs_fopen(fa, *argv, "r")) == ((void*)0)) {
    warn("%s", *argv);
    eval = 1;
    continue;
   }
   if (argc > 1) {
    (void)printf("%s==> %s <==\n",
        first ? "" : "\n", *argv);
    first = 0;
   }
   if (bytecnt == -1)
    head(fp, linecnt);
   else
    head_bytes(fp, bytecnt);
   (void)fclose(fp);
  }
 } else if (bytecnt == -1)
  head(stdin, linecnt);
 else
  head_bytes(stdin, bytecnt);

 fileargs_free(fa);
 exit(eval);
}

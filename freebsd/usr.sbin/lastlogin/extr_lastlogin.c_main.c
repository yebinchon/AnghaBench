
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utmpx {scalar_t__ ut_type; } ;


 scalar_t__ USER_PROCESS ;
 int UTXDB_LASTLOGIN ;
 int endutxent () ;
 int exit (int) ;
 int file ;
 int getopt (int,char**,char*) ;
 struct utmpx* getutxent () ;
 struct utmpx* getutxuser (char*) ;
 int optarg ;
 scalar_t__ optind ;
 int order ;
 int output (struct utmpx*) ;
 int qsort (struct utmpx*,int,int,int ) ;
 struct utmpx* realloc (struct utmpx*,int) ;
 scalar_t__ setutxdb (int ,int ) ;
 int usage () ;
 int utcmp ;
 int utcmp_time ;
 int xo_close_container (char*) ;
 int xo_close_list (char*) ;
 int xo_err (int,char*) ;
 int xo_finish () ;
 int xo_open_container (char*) ;
 int xo_open_list (char*) ;
 int xo_parse_args (int,char**) ;
 int xo_warnx (char*,char*) ;

int
main(int argc, char *argv[])
{
 int ch, i, ulistsize;
 struct utmpx *u, *ulist;

 argc = xo_parse_args(argc, argv);
 if (argc < 0)
  exit(1);

 while ((ch = getopt(argc, argv, "f:rt")) != -1) {
  switch (ch) {
  case 'f':
   file = optarg;
   break;
  case 'r':
   order = -1;
   break;
  case 't':
   utcmp = utcmp_time;
   break;
  default:
   usage();
  }
 }
 argc -= optind;
 argv += optind;

 xo_open_container("lastlogin-information");
 xo_open_list("lastlogin");

 if (argc > 0) {

  for (i = 0; i < argc; i++) {
   if (setutxdb(UTXDB_LASTLOGIN, file) != 0)
    xo_err(1, "failed to open lastlog database");
   if ((u = getutxuser(argv[i])) == ((void*)0)) {
    xo_warnx("user '%s' not found", argv[i]);
    continue;
   }
   output(u);
   endutxent();
  }
 } else {

  if (setutxdb(UTXDB_LASTLOGIN, file) != 0)
   xo_err(1, "failed to open lastlog database");
  ulist = ((void*)0);
  ulistsize = 0;
  while ((u = getutxent()) != ((void*)0)) {
   if (u->ut_type != USER_PROCESS)
    continue;
   if ((ulistsize % 16) == 0) {
    ulist = realloc(ulist,
        (ulistsize + 16) * sizeof(struct utmpx));
    if (ulist == ((void*)0))
     xo_err(1, "malloc");
   }
   ulist[ulistsize++] = *u;
  }
  endutxent();

  qsort(ulist, ulistsize, sizeof(struct utmpx), utcmp);
  for (i = 0; i < ulistsize; i++)
   output(&ulist[i]);
 }

 xo_close_list("lastlogin");
 xo_close_container("lastlogin-information");
 xo_finish();

 exit(0);
}

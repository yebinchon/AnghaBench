
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Hflag ;
 int LC_TIME ;
 int Tflag ;
 int UTXDB_ACTIVE ;
 int aflag ;
 int bflag ;
 int endutxent () ;
 int err (int,char*,char*) ;
 int exit (int ) ;
 int getopt (int,char**,char*) ;
 int heading () ;
 int mflag ;
 scalar_t__ optind ;
 int process_utmp () ;
 int qflag ;
 int quick () ;
 int setlocale (int ,char*) ;
 scalar_t__ setutxdb (int ,char*) ;
 int sflag ;
 scalar_t__ strcmp (char*,char*) ;
 int uflag ;
 int usage () ;
 int whoami () ;

int
main(int argc, char *argv[])
{
 int ch;

 setlocale(LC_TIME, "");

 while ((ch = getopt(argc, argv, "HTabmqsu")) != -1) {
  switch (ch) {
  case 'H':
   Hflag = 1;
   break;
  case 'T':
   Tflag = 1;
   break;
  case 'a':
   aflag = bflag = Tflag = uflag = 1;
   break;
  case 'b':
   bflag = 1;
   break;
  case 'm':
   mflag = 1;
   break;
  case 'q':
   qflag = 1;
   break;
  case 's':
   sflag = 1;
   break;
  case 'u':
   uflag = 1;
   break;
  default:
   usage();

  }
 }
 argc -= optind;
 argv += optind;

 if (argc >= 2 && strcmp(argv[0], "am") == 0 &&
     (strcmp(argv[1], "i") == 0 || strcmp(argv[1], "I") == 0)) {

  mflag = 1;
  argc -= 2;
  argv += 2;
 }
 if (argc > 1)
  usage();

 if (*argv != ((void*)0)) {
  if (setutxdb(UTXDB_ACTIVE, *argv) != 0)
   err(1, "%s", *argv);
 }

 if (qflag)
  quick();
 else {
  if (sflag)
   Tflag = uflag = 0;
  if (Hflag)
   heading();
  if (mflag)
   whoami();
  else
   process_utmp();
 }

 endutxent();

 exit(0);
}

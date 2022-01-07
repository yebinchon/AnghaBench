
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 int BASEMODE ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int errx (int,char*,char const*) ;
 int exit (int) ;
 int f_mode ;
 int getmode (void const*,int ) ;
 int getopt (int,char**,char*) ;
 scalar_t__ mkfifo (char*,int ) ;
 char* optarg ;
 scalar_t__ optind ;
 void* setmode (char const*) ;
 int umask (int ) ;
 int usage () ;
 int warn (char*,char*) ;

int
main(int argc, char *argv[])
{
 const char *modestr = ((void*)0);
 const void *modep;
 mode_t fifomode;
 int ch, exitval;

 while ((ch = getopt(argc, argv, "m:")) != -1)
  switch(ch) {
  case 'm':
   f_mode = 1;
   modestr = optarg;
   break;
  case '?':
  default:
   usage();
  }
 argc -= optind;
 argv += optind;
 if (argv[0] == ((void*)0))
  usage();

 if (f_mode) {
  umask(0);
  errno = 0;
  if ((modep = setmode(modestr)) == ((void*)0)) {
   if (errno)
    err(1, "setmode");
   errx(1, "invalid file mode: %s", modestr);
  }
  fifomode = getmode(modep, BASEMODE);
 } else {
  fifomode = BASEMODE;
 }

 for (exitval = 0; *argv != ((void*)0); ++argv)
  if (mkfifo(*argv, fifomode) < 0) {
   warn("%s", *argv);
   exitval = 1;
  }
 exit(exitval);
}

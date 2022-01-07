
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEFLINEWIDTH ;
 int LC_CTYPE ;
 int atoi (int ) ;
 int bflag ;
 int errx (int,char*) ;
 int exit (int) ;
 int fold (int) ;
 int freopen (char*,char*,int ) ;
 int getopt (int,char**,char*) ;
 int optarg ;
 scalar_t__ optind ;
 int setlocale (int ,char*) ;
 int sflag ;
 int stdin ;
 int usage () ;
 int warn (char*,char*) ;

int
main(int argc, char **argv)
{
 int ch, previous_ch;
 int rval, width;

 (void) setlocale(LC_CTYPE, "");

 width = -1;
 previous_ch = 0;
 while ((ch = getopt(argc, argv, "0123456789bsw:")) != -1) {
  switch (ch) {
  case 'b':
   bflag = 1;
   break;
  case 's':
   sflag = 1;
   break;
  case 'w':
   if ((width = atoi(optarg)) <= 0) {
    errx(1, "illegal width value");
   }
   break;
  case '0': case '1': case '2': case '3': case '4':
  case '5': case '6': case '7': case '8': case '9':



   switch (previous_ch) {
   case '0': case '1': case '2': case '3': case '4':
   case '5': case '6': case '7': case '8': case '9':


    width = width * 10 + (ch - '0');
    break;
   default:






    if (width == -1)
     width = ch - '0';
    break;
   }
   break;
  default:
   usage();
  }
  previous_ch = ch;
 }
 argv += optind;
 argc -= optind;

 if (width == -1)
  width = DEFLINEWIDTH;
 rval = 0;
 if (!*argv)
  fold(width);
 else for (; *argv; ++argv)
  if (!freopen(*argv, "r", stdin)) {
   warn("%s", *argv);
   rval = 1;
  } else
   fold(width);
 exit(rval);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wint_t ;


 int LC_CTYPE ;
 int WEOF ;
 int exit (int) ;
 scalar_t__ ferror (int ) ;
 int * freopen (char*,char*,int ) ;
 int getopt (int,char**,char*) ;
 int getstops (char*) ;
 int getwchar () ;
 scalar_t__ isdigit (unsigned char) ;
 int nstops ;
 char* optarg ;
 scalar_t__ optind ;
 int putwchar (int) ;
 int setlocale (int ,char*) ;
 int stdin ;
 int* tabstops ;
 int usage () ;
 int warn (char*,char const*) ;
 int wcwidth (int) ;

int
main(int argc, char *argv[])
{
 const char *curfile;
 wint_t wc;
 int c, column;
 int n;
 int rval;
 int width;

 setlocale(LC_CTYPE, "");


 while (argc > 1 && argv[1][0] == '-' &&
     isdigit((unsigned char)argv[1][1])) {
  getstops(&argv[1][1]);
  argc--; argv++;
 }

 while ((c = getopt (argc, argv, "t:")) != -1) {
  switch (c) {
  case 't':
   getstops(optarg);
   break;
  case '?':
  default:
   usage();

  }
 }
 argc -= optind;
 argv += optind;

 rval = 0;
 do {
  if (argc > 0) {
   if (freopen(argv[0], "r", stdin) == ((void*)0)) {
    warn("%s", argv[0]);
    rval = 1;
    argc--, argv++;
    continue;
   }
   curfile = argv[0];
   argc--, argv++;
  } else
   curfile = "stdin";
  column = 0;
  while ((wc = getwchar()) != WEOF) {
   switch (wc) {
   case '\t':
    if (nstops == 0) {
     do {
      putwchar(' ');
      column++;
     } while (column & 07);
     continue;
    }
    if (nstops == 1) {
     do {
      putwchar(' ');
      column++;
     } while (((column - 1) % tabstops[0]) != (tabstops[0] - 1));
     continue;
    }
    for (n = 0; n < nstops; n++)
     if (tabstops[n] > column)
      break;
    if (n == nstops) {
     putwchar(' ');
     column++;
     continue;
    }
    while (column < tabstops[n]) {
     putwchar(' ');
     column++;
    }
    continue;

   case '\b':
    if (column)
     column--;
    putwchar('\b');
    continue;

   default:
    putwchar(wc);
    if ((width = wcwidth(wc)) > 0)
     column += width;
    continue;

   case '\n':
    putwchar(wc);
    column = 0;
    continue;
   }
  }
  if (ferror(stdin)) {
   warn("%s", curfile);
   rval = 1;
  }
 } while (argc > 0);
 exit(rval);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;


 int LC_ALL ;
 scalar_t__ TAB ;

 int check (int ) ;
 int errx (int,char*,...) ;
 int getopt (int,char**,char*) ;
 int getwchar () ;
 scalar_t__ optind ;
 int const putwchar (int) ;
 int setlocale (int ,char*) ;
 int stdin ;
 int stdout ;
 scalar_t__ strtol (char*,char**,int) ;
 int usage () ;
 int wcwidth (int) ;

int
main(int argc, char *argv[])
{
 u_long column, start, stop;
 int ch, width;
 char *p;

 setlocale(LC_ALL, "");

 while ((ch = getopt(argc, argv, "")) != -1)
  switch(ch) {
  case '?':
  default:
   usage();
  }
 argc -= optind;
 argv += optind;

 start = stop = 0;
 switch(argc) {
 case 2:
  stop = strtol(argv[1], &p, 10);
  if (stop <= 0 || *p)
   errx(1, "illegal column -- %s", argv[1]);

 case 1:
  start = strtol(argv[0], &p, 10);
  if (start <= 0 || *p)
   errx(1, "illegal column -- %s", argv[0]);
  break;
 case 0:
  break;
 default:
  usage();
 }

 if (stop && start > stop)
  errx(1, "illegal start and stop columns");

 for (column = 0;;) {
  switch (ch = getwchar()) {
  case 128:
   check(stdin);
   break;
  case '\b':
   if (column)
    --column;
   break;
  case '\n':
   column = 0;
   break;
  case '\t':
   column = (column + TAB) & ~(TAB - 1);
   break;
  default:
   if ((width = wcwidth(ch)) > 0)
    column += width;
   break;
  }

  if ((!start || column < start || (stop && column > stop)) &&
      putwchar(ch) == 128)
   check(stdout);
 }
}

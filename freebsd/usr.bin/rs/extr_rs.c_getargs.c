
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DETAILSHAPE ;
 int ICOLBOUNDS ;
 int MTRANSPOSE ;
 int NOARGS ;
 int NOTRIMENDCOL ;
 int NULLPAD ;
 int OCOLBOUNDS ;
 int ONEISEPONLY ;
 int ONEOSEPONLY ;
 int ONEPERCHAR ;
 int ONEPERLINE ;
 int RECYCLE ;
 int RIGHTADJUST ;
 int SHAPEONLY ;
 int SKIPPRINT ;
 int SQUEEZE ;
 int TRANSPOSE ;
 void* atoi (char*) ;
 int cord ;
 int errx (int,char*) ;
 int flags ;
 char* getlist (int *,char*) ;
 char* getnum (int*,char*,int ) ;
 int gutter ;
 int icbd ;
 char isep ;
 int ocbd ;
 void* ocols ;
 void* orows ;
 char osep ;
 int owidth ;
 int propgutter ;
 int skip ;
 int usage () ;

__attribute__((used)) static void
getargs(int ac, char *av[])
{
 char *p;

 if (ac == 1) {
  flags |= NOARGS | TRANSPOSE;
 }
 while (--ac && **++av == '-')
  for (p = *av+1; *p; p++)
   switch (*p) {
   case 'T':
    flags |= MTRANSPOSE;
   case 't':
    flags |= TRANSPOSE;
    break;
   case 'c':
    flags |= ONEISEPONLY;
   case 's':
    if (p[1])
     isep = *++p;
    else
     isep = '\t';
    break;
   case 'C':
    flags |= ONEOSEPONLY;
   case 'S':
    if (p[1])
     osep = *++p;
    else
     osep = '\t';
    break;
   case 'w':
    p = getnum(&owidth, p, 0);
    if (owidth <= 0)
     errx(1, "width must be a positive integer");
    break;
   case 'K':
    flags |= SKIPPRINT;
   case 'k':
    p = getnum(&skip, p, 0);
    if (!skip)
     skip = 1;
    break;
   case 'm':
    flags |= NOTRIMENDCOL;
    break;
   case 'g':
    p = getnum(&gutter, p, 0);
    break;
   case 'G':
    p = getnum(&propgutter, p, 0);
    break;
   case 'e':
    flags |= ONEPERLINE;
    break;
   case 'E':
    flags |= ONEPERCHAR;
    break;
   case 'j':
    flags |= RIGHTADJUST;
    break;
   case 'n':
    flags |= NULLPAD;
    break;
   case 'y':
    flags |= RECYCLE;
    break;
   case 'H':
    flags |= DETAILSHAPE;
   case 'h':
    flags |= SHAPEONLY;
    break;
   case 'z':
    flags |= SQUEEZE;
    break;



   case 'o':
    p = getlist(&cord, p);
    break;
   case 'b':
    flags |= ICOLBOUNDS;
    p = getlist(&icbd, p);
    break;
   case 'B':
    flags |= OCOLBOUNDS;
    p = getlist(&ocbd, p);
    break;
   default:
    usage();
   }


 switch (ac) {


 case 2:
  if ((ocols = atoi(av[1])) < 0)
   ocols = 0;
 case 1:
  if ((orows = atoi(av[0])) < 0)
   orows = 0;
 case 0:
  break;
 default:
  errx(1, "too many arguments");
 }
}

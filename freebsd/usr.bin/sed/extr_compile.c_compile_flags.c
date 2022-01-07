
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wfile ;
struct s_subst {int n; int p; int wfd; int icase; int * wfile; } ;


 int DEFFILEMODE ;
 int EATSPACE () ;
 int ERANGE ;
 unsigned long INT_MAX ;
 int O_APPEND ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int _POSIX2_LINE_MAX ;
 int aflag ;
 int err (int,char*,...) ;
 int errno ;
 int errx (int,char*,int ,int ,...) ;
 int fname ;
 int linenum ;
 int open (char*,int,int ) ;
 int * strdup (char*) ;
 unsigned long strtol (char*,char**,int) ;
 int warnx (char*,int ,int ) ;

__attribute__((used)) static char *
compile_flags(char *p, struct s_subst *s)
{
 int gn;
 unsigned long nval;
 char wfile[_POSIX2_LINE_MAX + 1], *q, *eq;

 s->n = 1;
 s->p = 0;
 s->wfile = ((void*)0);
 s->wfd = -1;
 s->icase = 0;
 for (gn = 0;;) {
  EATSPACE();
  switch (*p) {
  case 'g':
   if (gn)
    errx(1,
"%lu: %s: more than one number or 'g' in substitute flags", linenum, fname);
   gn = 1;
   s->n = 0;
   break;
  case '\0':
  case '\n':
  case ';':
   return (p);
  case 'p':
   s->p = 1;
   break;
  case 'i':
  case 'I':
   s->icase = 1;
   break;
  case '1': case '2': case '3':
  case '4': case '5': case '6':
  case '7': case '8': case '9':
   if (gn)
    errx(1,
"%lu: %s: more than one number or 'g' in substitute flags", linenum, fname);
   gn = 1;
   errno = 0;
   nval = strtol(p, &p, 10);
   if (errno == ERANGE || nval > INT_MAX)
    errx(1,
"%lu: %s: overflow in the 'N' substitute flag", linenum, fname);
   s->n = nval;
   p--;
   break;
  case 'w':
   p++;






   EATSPACE();
   q = wfile;
   eq = wfile + sizeof(wfile) - 1;
   while (*p) {
    if (*p == '\n')
     break;
    if (q >= eq)
     err(1, "wfile too long");
    *q++ = *p++;
   }
   *q = '\0';
   if (q == wfile)
    errx(1, "%lu: %s: no wfile specified", linenum, fname);
   s->wfile = strdup(wfile);
   if (!aflag && (s->wfd = open(wfile,
       O_WRONLY|O_APPEND|O_CREAT|O_TRUNC,
       DEFFILEMODE)) == -1)
    err(1, "%s", wfile);
   return (p);
  default:
   errx(1, "%lu: %s: bad flag in substitute command: '%c'",
     linenum, fname, *p);
   break;
  }
  p++;
 }
}

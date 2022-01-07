
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int l; int * r; } ;
struct s_addr {scalar_t__ type; TYPE_1__ u; } ;


 scalar_t__ AT_LAST ;
 scalar_t__ AT_LINE ;
 scalar_t__ AT_RE ;
 scalar_t__ AT_RELLINE ;
 int _POSIX2_LINE_MAX ;
 char* compile_delimited (char*,char*,int ) ;
 int * compile_re (char*,int) ;
 int errx (int,char*,int ,int ) ;
 int fname ;
 int linenum ;
 int strtol (char*,char**,int) ;

__attribute__((used)) static char *
compile_addr(char *p, struct s_addr *a)
{
 char *end, re[_POSIX2_LINE_MAX + 1];
 int icase;

 icase = 0;

 a->type = 0;
 switch (*p) {
 case '\\':
  ++p;

 case '/':
  p = compile_delimited(p, re, 0);
  if (p == ((void*)0))
   errx(1, "%lu: %s: unterminated regular expression", linenum, fname);

  if (*p == 'I') {
   icase = 1;
   p++;
  }
  if (*re == '\0')
   a->u.r = ((void*)0);
  else
   a->u.r = compile_re(re, icase);
  a->type = AT_RE;
  return (p);

 case '$':
  a->type = AT_LAST;
  return (p + 1);

 case '+':
  a->type = AT_RELLINE;
  p++;


 case '0': case '1': case '2': case '3': case '4':
 case '5': case '6': case '7': case '8': case '9':
  if (a->type == 0)
   a->type = AT_LINE;
  a->u.l = strtol(p, &end, 10);
  return (end);
 default:
  errx(1, "%lu: %s: expected context address", linenum, fname);
  return (((void*)0));
 }
}

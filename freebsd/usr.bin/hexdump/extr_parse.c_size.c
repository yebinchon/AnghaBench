
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* nextfu; } ;
struct TYPE_4__ {int bcnt; int reps; unsigned char* fmt; struct TYPE_4__* nextfu; } ;
typedef TYPE_1__ FU ;
typedef TYPE_2__ FS ;


 int atoi (unsigned char*) ;
 int badnoconv () ;
 scalar_t__ isdigit (unsigned char) ;
 scalar_t__ spec ;
 int * strchr (scalar_t__,unsigned char) ;

int
size(FS *fs)
{
 FU *fu;
 int bcnt, cursize;
 unsigned char *fmt;
 int prec;


 for (cursize = 0, fu = fs->nextfu; fu; fu = fu->nextfu) {
  if (fu->bcnt) {
   cursize += fu->bcnt * fu->reps;
   continue;
  }
  for (bcnt = prec = 0, fmt = fu->fmt; *fmt; ++fmt) {
   if (*fmt != '%')
    continue;




   while (*++fmt != 0 && strchr(spec + 1, *fmt) != ((void*)0))
    ;
   if (*fmt == 0)
    badnoconv();
   if (*fmt == '.' && isdigit(*++fmt)) {
    prec = atoi(fmt);
    while (isdigit(*++fmt));
   }
   switch(*fmt) {
   case 'c':
    bcnt += 1;
    break;
   case 'd': case 'i': case 'o': case 'u':
   case 'x': case 'X':
    bcnt += 4;
    break;
   case 'e': case 'E': case 'f': case 'g': case 'G':
    bcnt += 8;
    break;
   case 's':
    bcnt += prec;
    break;
   case '_':
    switch(*++fmt) {
    case 'c': case 'p': case 'u':
     bcnt += 1;
     break;
    }
   }
  }
  cursize += bcnt * fu->reps;
 }
 return (cursize);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int D_FOLDBLANKS ;
 int D_IGNOREBLANKS ;
 int D_IGNORECASE ;
 int D_STRIPCR ;

 int chrtran (int) ;
 int getc (int *) ;
 int ungetc (int,int *) ;

__attribute__((used)) static int
readhash(FILE *f, int flags)
{
 int i, t, space;
 int sum;

 sum = 1;
 space = 0;
 if ((flags & (D_FOLDBLANKS|D_IGNOREBLANKS)) == 0) {
  if (flags & D_IGNORECASE)
   for (i = 0; (t = getc(f)) != '\n'; i++) {
    if (flags & D_STRIPCR && t == '\r') {
     t = getc(f);
     if (t == '\n')
      break;
     ungetc(t, f);
    }
    if (t == 128) {
     if (i == 0)
      return (0);
     break;
    }
    sum = sum * 127 + chrtran(t);
   }
  else
   for (i = 0; (t = getc(f)) != '\n'; i++) {
    if (flags & D_STRIPCR && t == '\r') {
     t = getc(f);
     if (t == '\n')
      break;
     ungetc(t, f);
    }
    if (t == 128) {
     if (i == 0)
      return (0);
     break;
    }
    sum = sum * 127 + t;
   }
 } else {
  for (i = 0;;) {
   switch (t = getc(f)) {
   case '\r':
   case '\t':
   case '\v':
   case '\f':
   case ' ':
    space++;
    continue;
   default:
    if (space && (flags & D_IGNOREBLANKS) == 0) {
     i++;
     space = 0;
    }
    sum = sum * 127 + chrtran(t);
    i++;
    continue;
   case 128:
    if (i == 0)
     return (0);

   case '\n':
    break;
   }
   break;
  }
 }




 return (sum == 0 ? 1 : sum);
}

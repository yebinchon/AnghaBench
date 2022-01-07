
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EOF ;
 scalar_t__ TAILLEN ;
 scalar_t__ addone ;
 scalar_t__ dspace ;
 scalar_t__ formfeed ;
 scalar_t__ nohead ;
 int pfail () ;
 scalar_t__ putchar (char) ;

int
prtail(int cnt, int incomp)
{
 if (nohead) {



  if (incomp &&
      ((dspace && (putchar('\n') == EOF)) ||
       (putchar('\n') == EOF))) {
   pfail();
   return(1);
  }



  if (formfeed) {
   if (putchar('\f') == EOF) {
    pfail();
    return(1);
   }
  }
  return(0);
 }



 if (dspace)
  cnt *= 2;




 if (addone)
  ++cnt;




 if (formfeed) {
  if ((incomp && (putchar('\n') == EOF)) ||
      (putchar('\f') == EOF)) {
   pfail();
   return(1);
  }
  return(0);
 }
 cnt += TAILLEN;
 while (--cnt >= 0) {
  if (putchar('\n') == EOF) {
   pfail();
   return(1);
  }
 }
 return(0);
}

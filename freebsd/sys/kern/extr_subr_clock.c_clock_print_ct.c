
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clocktime {int year; int mon; int day; int hour; int min; int sec; int nsec; } ;


 int KASSERT (int,char*) ;
 int* nsdivisors ;
 int printf (char*,int,int,int,int,int,int,...) ;

void
clock_print_ct(const struct clocktime *ct, int nsdigits)
{

 KASSERT(nsdigits >= 0 && nsdigits <= 9, ("bad nsdigits %d", nsdigits));

 if (nsdigits > 0) {
  printf("%04d-%02d-%02d %02d:%02d:%02d.%*.*ld",
      ct->year, ct->mon, ct->day,
      ct->hour, ct->min, ct->sec,
      nsdigits, nsdigits, ct->nsec / nsdivisors[nsdigits]);
 } else {
  printf("%04d-%02d-%02d %02d:%02d:%02d",
      ct->year, ct->mon, ct->day,
      ct->hour, ct->min, ct->sec);
 }
}

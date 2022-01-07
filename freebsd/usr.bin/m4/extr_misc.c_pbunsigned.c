
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pushback (unsigned long) ;

void
pbunsigned(unsigned long n)
{
 do {
  pushback(n % 10 + '0');
 }
 while ((n /= 10) > 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
typedef scalar_t__ u_int ;
struct number {int dummy; } ;
struct TYPE_2__ {scalar_t__ obase; } ;


 int UINT_MAX ;
 int ULONG_MAX ;
 TYPE_1__ bmachine ;
 int free_number (struct number*) ;
 int get_ulong (struct number*) ;
 struct number* pop_number () ;
 int warnx (char*) ;

__attribute__((used)) static void
set_obase(void)
{
 struct number *n;
 u_long base;

 n = pop_number();
 if (n != ((void*)0)) {
  base = get_ulong(n);
  if (base != ULONG_MAX && base > 1 && base <= UINT_MAX)
   bmachine.obase = (u_int)base;
  else
   warnx("output base must be a number greater than 1");
  free_number(n);
 }
}

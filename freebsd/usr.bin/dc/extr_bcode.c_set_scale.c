
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_long ;
typedef scalar_t__ u_int ;
struct number {int number; } ;
struct TYPE_2__ {scalar_t__ scale; } ;


 scalar_t__ BN_is_negative (int ) ;
 scalar_t__ UINT_MAX ;
 scalar_t__ ULONG_MAX ;
 TYPE_1__ bmachine ;
 int free_number (struct number*) ;
 scalar_t__ get_ulong (struct number*) ;
 struct number* pop_number () ;
 int warnx (char*) ;

__attribute__((used)) static void
set_scale(void)
{
 struct number *n;
 u_long scale;

 n = pop_number();
 if (n != ((void*)0)) {
  if (BN_is_negative(n->number))
   warnx("scale must be a nonnegative number");
  else {
   scale = get_ulong(n);
   if (scale != ULONG_MAX && scale <= UINT_MAX)
    bmachine.scale = (u_int)scale;
   else
    warnx("scale too large");
   }
  free_number(n);
 }
}

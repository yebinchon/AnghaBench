
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_long ;
struct number {int dummy; } ;
struct TYPE_2__ {scalar_t__ readsp; } ;


 scalar_t__ ULONG_MAX ;
 TYPE_1__ bmachine ;
 scalar_t__ get_ulong (struct number*) ;
 struct number* pop_number () ;
 int skip_until_mark () ;
 int src_free () ;
 int warnx (char*) ;

__attribute__((used)) static void
skipN(void)
{
 struct number *n;
 u_long i;

 n = pop_number();
 if (n == ((void*)0))
  return;
 i = get_ulong(n);
 if (i == ULONG_MAX)
  warnx("J command requires a number >= 0");
 else if (i > 0 && bmachine.readsp < i)
  warnx("J command argument exceeded string execution depth");
 else {
  while (i-- > 0) {
   src_free();
   bmachine.readsp--;
  }
  skip_until_mark();
 }
}

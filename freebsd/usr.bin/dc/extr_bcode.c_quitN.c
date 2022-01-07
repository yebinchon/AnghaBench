
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
 int free_number (struct number*) ;
 scalar_t__ get_ulong (struct number*) ;
 struct number* pop_number () ;
 int src_free () ;
 int warnx (char*) ;

__attribute__((used)) static void
quitN(void)
{
 struct number *n;
 u_long i;

 n = pop_number();
 if (n == ((void*)0))
  return;
 i = get_ulong(n);
 free_number(n);
 if (i == ULONG_MAX || i == 0)
  warnx("Q command requires a number >= 1");
 else if (bmachine.readsp < i)
  warnx("Q command argument exceeded string execution depth");
 else {
  while (i-- > 0) {
   src_free();
   bmachine.readsp--;
  }
 }
}

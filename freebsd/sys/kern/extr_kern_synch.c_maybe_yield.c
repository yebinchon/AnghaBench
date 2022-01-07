
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PRI_USER ;
 int kern_yield (int ) ;
 scalar_t__ should_yield () ;

void
maybe_yield(void)
{

 if (should_yield())
  kern_yield(PRI_USER);
}

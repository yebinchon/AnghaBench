
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ td_critnest; } ;


 TYPE_1__* curthread ;
 int suword (void volatile*,long) ;

__attribute__((used)) static int
vm86_suword(volatile void *base, long word)
{

 if (curthread->td_critnest != 0) {
  *(volatile long *)base = word;
  return (0);
 }
 return (suword(base, word));
}

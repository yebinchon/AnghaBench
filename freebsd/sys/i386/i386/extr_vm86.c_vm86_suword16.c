
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {scalar_t__ td_critnest; } ;


 TYPE_1__* curthread ;
 int suword16 (void volatile*,int) ;

__attribute__((used)) static int
vm86_suword16(volatile void *base, int word)
{

 if (curthread->td_critnest != 0) {
  *(volatile uint16_t *)base = word;
  return (0);
 }
 return (suword16(base, word));
}

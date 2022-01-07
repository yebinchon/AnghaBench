
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct TYPE_3__ {scalar_t__ val; int reg; } ;


 unsigned int nitems (TYPE_1__*) ;
 TYPE_1__* urtw_ratetable ;

__attribute__((used)) static uint16_t
urtw_rtl2rate(uint32_t rate)
{
 unsigned int i;

 for (i = 0; i < nitems(urtw_ratetable); i++) {
  if (rate == urtw_ratetable[i].val)
   return urtw_ratetable[i].reg;
 }

 return (0);
}

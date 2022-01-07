
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timecounter {int dummy; } ;
struct TYPE_2__ {int GPTMR2CNT; } ;


 TYPE_1__* elan_mmcr ;

__attribute__((used)) static unsigned
elan_get_timecount(struct timecounter *tc)
{


 return (elan_mmcr->GPTMR2CNT);
}

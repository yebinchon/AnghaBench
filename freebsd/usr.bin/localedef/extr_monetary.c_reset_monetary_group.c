
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * mon_grouping; } ;


 int free (char*) ;
 TYPE_1__ mon ;

void
reset_monetary_group(void)
{
 free((char *)mon.mon_grouping);
 mon.mon_grouping = ((void*)0);
}

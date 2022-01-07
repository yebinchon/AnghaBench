
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * grouping; } ;


 int free (char*) ;
 TYPE_1__ numeric ;

void
reset_numeric_group(void)
{
 free((char *)numeric.grouping);
 numeric.grouping = ((void*)0);
}

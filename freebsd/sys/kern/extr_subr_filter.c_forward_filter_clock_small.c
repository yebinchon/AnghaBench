
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct time_filter_small {TYPE_1__* entries; } ;
struct TYPE_2__ {int time_up; } ;


 int NUM_FILTER_ENTRIES ;

void
forward_filter_clock_small(struct time_filter_small *tf, uint32_t ticks_forward)
{




 int i;

 for(i=0; i<NUM_FILTER_ENTRIES; i++) {
  tf->entries[i].time_up += ticks_forward;
 }
}

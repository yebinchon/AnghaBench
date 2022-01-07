
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint32_t ;
struct time_filter_small {TYPE_1__* entries; } ;
struct TYPE_2__ {void* time_up; int value; } ;


 int NUM_FILTER_ENTRIES ;

void
filter_increase_by_small(struct time_filter_small *tf, uint32_t incr_by, uint32_t now)
{
 int i;





 tf->entries[0].value += incr_by;
 tf->entries[0].time_up = now;
 for(i=1; i<NUM_FILTER_ENTRIES; i++) {
  tf->entries[i].value = tf->entries[0].value;
  tf->entries[i].time_up = now;
 }
}

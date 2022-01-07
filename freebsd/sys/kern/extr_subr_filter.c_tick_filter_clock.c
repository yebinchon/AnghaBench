
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct time_filter {int cur_time_limit; TYPE_1__* entries; } ;
struct TYPE_2__ {int time_up; int value; } ;


 int NUM_FILTER_ENTRIES ;

void
tick_filter_clock(struct time_filter *tf, uint32_t now)
{
 int i;
 uint32_t tim, time_limit;
 for(i=(NUM_FILTER_ENTRIES-2); i>=0 ; i--) {
  tim = now - tf->entries[i].time_up;
  time_limit = (tf->cur_time_limit * (NUM_FILTER_ENTRIES-i))/NUM_FILTER_ENTRIES;
  if (tim >= time_limit) {




   tf->entries[i].value = tf->entries[(i+1)].value;
   tf->entries[i].time_up = tf->entries[(i+1)].time_up;
  }

 }
}

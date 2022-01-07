
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint32_t ;
struct time_filter_small {int cur_time_limit; TYPE_1__* entries; } ;
struct TYPE_2__ {void* time_up; void* value; } ;


 int NUM_FILTER_ENTRIES ;

__attribute__((used)) static void
check_update_times_small(struct time_filter_small *tf, uint32_t value, uint32_t now)
{
 int i, j, fnd;
 uint32_t tim;
 uint32_t time_limit;
 for(i=0; i<(NUM_FILTER_ENTRIES-1); i++) {
  tim = now - tf->entries[i].time_up;
  time_limit = (tf->cur_time_limit * (NUM_FILTER_ENTRIES-i))/NUM_FILTER_ENTRIES;
  if (tim >= time_limit) {
   fnd = 0;
   for(j=(i+1); j<NUM_FILTER_ENTRIES; j++) {
    if (tf->entries[i].time_up < tf->entries[j].time_up) {
     tf->entries[i].value = tf->entries[j].value;
     tf->entries[i].time_up = tf->entries[j].time_up;
     fnd = 1;
     break;
    }
   }
   if (fnd == 0) {

    tf->entries[i].value = value;
    tf->entries[i].time_up = now;
   }
  }
 }
 i = NUM_FILTER_ENTRIES-1;
 tim = now - tf->entries[i].time_up;
 time_limit = (tf->cur_time_limit * (NUM_FILTER_ENTRIES-i))/NUM_FILTER_ENTRIES;
 if (tim >= time_limit) {
  tf->entries[i].value = value;
  tf->entries[i].time_up = now;
 }
}

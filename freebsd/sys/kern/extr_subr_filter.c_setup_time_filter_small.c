
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct time_filter_small {int cur_time_limit; TYPE_1__* entries; } ;
struct TYPE_2__ {int value; scalar_t__ time_up; } ;


 int EINVAL ;
 int FILTER_TYPE_MAX ;
 int FILTER_TYPE_MIN ;
 int NUM_FILTER_ENTRIES ;

int
setup_time_filter_small(struct time_filter_small *tf, int fil_type, uint32_t time_len)
{
 uint32_t set_val;
 int i;






 if ((fil_type != FILTER_TYPE_MIN) &&
     (fil_type != FILTER_TYPE_MAX))
  return(EINVAL);

 if (time_len < NUM_FILTER_ENTRIES)
  return(EINVAL);

 if (fil_type == FILTER_TYPE_MIN)
  set_val = 0xffffffff;
 else
  set_val = 0;

 for(i=0; i<NUM_FILTER_ENTRIES; i++) {
  tf->entries[i].value = set_val;
  tf->entries[i].time_up = 0;
 }
 tf->cur_time_limit = time_len;
 return(0);
}

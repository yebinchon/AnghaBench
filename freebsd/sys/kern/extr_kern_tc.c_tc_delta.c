
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct timehands {int th_offset_count; struct timecounter* th_counter; } ;
struct timecounter {int (* tc_get_timecount ) (struct timecounter*) ;int tc_counter_mask; } ;


 int stub1 (struct timecounter*) ;

__attribute__((used)) static __inline u_int
tc_delta(struct timehands *th)
{
 struct timecounter *tc;

 tc = th->th_counter;
 return ((tc->tc_get_timecount(tc) - th->th_offset_count) &
     tc->tc_counter_mask);
}

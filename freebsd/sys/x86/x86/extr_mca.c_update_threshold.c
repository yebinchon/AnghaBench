
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef enum scan_mode { ____Placeholder_scan_mode } scan_mode ;


 int CMCI ;
 int POLLED ;
 int cmc_throttle ;
 int min (int,int) ;
 int time_uptime ;

__attribute__((used)) static int
update_threshold(enum scan_mode mode, int valid, int last_intr, int count,
    int cur_threshold, int max_threshold)
{
 u_int delta;
 int limit;

 delta = (u_int)(time_uptime - last_intr);
 limit = cur_threshold;







 if (mode == CMCI && valid) {
  if (delta < cmc_throttle && count >= limit &&
      limit < max_threshold) {
   limit = min(limit << 1, max_threshold);
  }
  return (limit);
 }





 if (mode != POLLED)
  return (limit);


 if (delta < cmc_throttle)
  return (limit);





 if (valid) {
  limit = count * cmc_throttle / delta;
  if (limit <= 0)
   limit = 1;
  else if (limit > max_threshold)
   limit = max_threshold;
 } else {
  limit = 1;
 }
 return (limit);
}

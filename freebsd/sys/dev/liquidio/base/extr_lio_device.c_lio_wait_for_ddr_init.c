
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uint32_t ;
struct octeon_device {int dummy; } ;


 int lio_mem_access_ok (struct octeon_device*) ;
 int lio_sleep_timeout (int) ;

int
lio_wait_for_ddr_init(struct octeon_device *oct, unsigned long *timeout)
{
 int ret = 1;
 uint32_t ms;

 if (timeout == ((void*)0))
  return (ret);

 for (ms = 0; ret && ((*timeout == 0) || (ms <= *timeout)); ms += 100) {
  ret = lio_mem_access_ok(oct);


  if (ret)
   lio_sleep_timeout(100);
 }

 return (ret);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;


 scalar_t__ vm_min_waiters ;
 scalar_t__ vm_pageproc_waiters ;
 scalar_t__ vm_severe_waiters ;

u_int
vm_wait_count(void)
{

 return (vm_severe_waiters + vm_min_waiters + vm_pageproc_waiters);
}

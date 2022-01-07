
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int t_malloc_fail ;
 int time_uptime ;

int
malloc_last_fail(void)
{

 return (time_uptime - t_malloc_fail);
}

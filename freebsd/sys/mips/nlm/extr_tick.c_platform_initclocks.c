
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * platform_timecounter ;
 int tc_init (int *) ;

void
platform_initclocks(void)
{

 if (platform_timecounter != ((void*)0))
  tc_init(platform_timecounter);
}

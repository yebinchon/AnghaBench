
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HPT_TIME ;


 int hz ;
 int ticks ;

HPT_TIME os_query_time(void)
{
 return ticks * (1000000 / hz);
}

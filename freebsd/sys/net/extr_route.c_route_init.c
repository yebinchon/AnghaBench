
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RT_MAXFIBS ;
 int rt_numfibs ;

__attribute__((used)) static void
route_init(void)
{


 if (rt_numfibs > RT_MAXFIBS)
  rt_numfibs = RT_MAXFIBS;
 if (rt_numfibs == 0)
  rt_numfibs = 1;
}

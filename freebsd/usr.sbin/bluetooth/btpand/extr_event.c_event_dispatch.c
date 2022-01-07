
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ __event_dispatch () ;

int
event_dispatch(void)
{
 while (__event_dispatch() == 0)
  ;

 return (-1);
}

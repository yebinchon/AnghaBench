
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hogticks ;
 int hz ;
 int init_sleepqueues () ;

__attribute__((used)) static void
sleepinit(void *unused)
{

 hogticks = (hz / 10) * 2;
 init_sleepqueues();
}

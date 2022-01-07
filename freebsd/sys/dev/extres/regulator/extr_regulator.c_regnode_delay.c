
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DELAY (int) ;
 scalar_t__ cold ;
 int hz ;
 int pause (char*,int) ;

__attribute__((used)) static void
regnode_delay(int usec)
{
 int ticks;

 if (usec == 0)
  return;
 ticks = (usec * hz + 999999) / 1000000;

 if (cold || ticks < 2)
  DELAY(usec);
 else
  pause("REGULATOR", ticks);
}

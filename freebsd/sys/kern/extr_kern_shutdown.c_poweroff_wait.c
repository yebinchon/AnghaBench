
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DELAY (int) ;
 int RB_POWERCYCLE ;
 int RB_POWEROFF ;
 int poweroff_delay ;

__attribute__((used)) static void
poweroff_wait(void *junk, int howto)
{

 if ((howto & (RB_POWEROFF | RB_POWERCYCLE)) == 0 || poweroff_delay <= 0)
  return;
 DELAY(poweroff_delay * 1000);
}

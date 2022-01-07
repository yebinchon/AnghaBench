
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int delay_tsc (int) ;
 int inb (int) ;
 scalar_t__ tsc_freq ;

void
cpu_lock_delay(void)
{
 if (tsc_freq != 0)
  delay_tsc(1);
 else
  inb(0x84);
}

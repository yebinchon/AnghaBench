
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ACQUIRED ;
 scalar_t__ RELEASED ;
 int TIMER_16BIT ;
 int TIMER_MODE ;
 int TIMER_SEL2 ;
 int TIMER_SQWAVE ;
 int outb (int ,int) ;
 int ppi_spkr_on () ;
 scalar_t__ timer2_state ;

int
timer_spkr_acquire(void)
{
 int mode;

 mode = TIMER_SEL2 | TIMER_SQWAVE | TIMER_16BIT;

 if (timer2_state != RELEASED)
  return (-1);
 timer2_state = ACQUIRED;
 outb(TIMER_MODE, TIMER_SEL2 | (mode & 0x3f));

 ppi_spkr_on();
 return (0);
}

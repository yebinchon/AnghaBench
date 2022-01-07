
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIMER_CNTR2 ;
 int clock_lock ;
 int i8254_freq ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int outb (int ,int) ;

void
timer_spkr_setfreq(int freq)
{

 freq = i8254_freq / freq;
 mtx_lock_spin(&clock_lock);
 outb(TIMER_CNTR2, freq & 0xff);
 outb(TIMER_CNTR2, freq >> 8);
 mtx_unlock_spin(&clock_lock);
}

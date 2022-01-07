
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIMER_CNTR0 ;
 int TIMER_LATCH ;
 int TIMER_MODE ;
 int TIMER_SEL0 ;
 int clock_lock ;
 int inb (int ) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int outb (int ,int) ;

__attribute__((used)) static int
getit(void)
{
 int high, low;

 mtx_lock_spin(&clock_lock);


 outb(TIMER_MODE, TIMER_SEL0 | TIMER_LATCH);

 low = inb(TIMER_CNTR0);
 high = inb(TIMER_CNTR0);

 mtx_unlock_spin(&clock_lock);
 return ((high << 8) | low);
}

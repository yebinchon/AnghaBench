
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct counter_rate {int cr_over; int cr_ticks; scalar_t__ cr_lock; int cr_rate; } ;
typedef int int64_t ;


 scalar_t__ atomic_cmpset_acq_int (scalar_t__*,int ,int) ;
 int atomic_store_rel_int (scalar_t__*,int ) ;
 int counter_u64_add (int ,int) ;
 int counter_u64_fetch (int ) ;
 int counter_u64_zero (int ) ;
 scalar_t__ hz ;
 int ticks ;

int64_t
counter_ratecheck(struct counter_rate *cr, int64_t limit)
{
 int64_t val;
 int now;

 val = cr->cr_over;
 now = ticks;

 if ((u_int)(now - cr->cr_ticks) >= hz) {




  if ((cr->cr_lock == 0) &&
      atomic_cmpset_acq_int(&cr->cr_lock, 0, 1)) {




   if ((u_int)(now - cr->cr_ticks) >= hz) {
    val = counter_u64_fetch(cr->cr_rate);
    counter_u64_zero(cr->cr_rate);
    cr->cr_over = 0;
    cr->cr_ticks = now;
    if (val <= limit)
     val = 0;
   }
   atomic_store_rel_int(&cr->cr_lock, 0);
  } else





   return (val);
 }

 counter_u64_add(cr->cr_rate, 1);
 if (cr->cr_over != 0)
  return (-1);
 if (counter_u64_fetch(cr->cr_rate) > limit)
  val = cr->cr_over = -1;

 return (val);
}

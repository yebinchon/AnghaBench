
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_ring {int abdications; int restarts; int stalls; int starts; int drops; int enqueues; } ;


 int counter_u64_zero (int ) ;

void
mp_ring_reset_stats(struct mp_ring *r)
{

 counter_u64_zero(r->enqueues);
 counter_u64_zero(r->drops);
 counter_u64_zero(r->starts);
 counter_u64_zero(r->stalls);
 counter_u64_zero(r->restarts);
 counter_u64_zero(r->abdications);
}

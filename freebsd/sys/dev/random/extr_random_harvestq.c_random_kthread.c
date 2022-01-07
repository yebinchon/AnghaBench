
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_5__ {scalar_t__* buf; } ;
struct TYPE_4__ {int out; int in; scalar_t__ ring; } ;
struct TYPE_6__ {int hc_kthread_proc; TYPE_2__ hc_entropy_fast_accumulator; TYPE_1__ hc_entropy_ring; } ;


 int C_PREL (int) ;
 size_t RANDOM_ACCUM_MAX ;
 int RANDOM_RING_MAX ;
 int RANDOM_UMA ;
 int SBT_1S ;
 TYPE_3__ harvest_context ;
 int kproc_exit (int ) ;
 int random_harvest_direct (scalar_t__*,int,int ) ;
 int random_harvestq_fast_process_event (scalar_t__) ;
 int random_kthread_control ;
 int random_sources_feed () ;
 int tsleep_sbt (int *,int ,char*,int,int ,int ) ;
 int wakeup (int *) ;

__attribute__((used)) static void
random_kthread(void)
{
        u_int maxloop, ring_out, i;






 for (random_kthread_control = 1; random_kthread_control;) {

  maxloop = RANDOM_RING_MAX;
  while (harvest_context.hc_entropy_ring.out != harvest_context.hc_entropy_ring.in) {
   ring_out = (harvest_context.hc_entropy_ring.out + 1)%RANDOM_RING_MAX;
   random_harvestq_fast_process_event(harvest_context.hc_entropy_ring.ring + ring_out);
   harvest_context.hc_entropy_ring.out = ring_out;
   if (!--maxloop)
    break;
  }
  random_sources_feed();

  for (i = 0; i < RANDOM_ACCUM_MAX; i++) {
   if (harvest_context.hc_entropy_fast_accumulator.buf[i]) {
    random_harvest_direct(harvest_context.hc_entropy_fast_accumulator.buf + i, sizeof(harvest_context.hc_entropy_fast_accumulator.buf[0]), RANDOM_UMA);
    harvest_context.hc_entropy_fast_accumulator.buf[i] = 0;
   }
  }

  tsleep_sbt(&harvest_context.hc_kthread_proc, 0, "-", SBT_1S/10, 0, C_PREL(1));
 }
 random_kthread_control = -1;
 wakeup(&harvest_context.hc_kthread_proc);
 kproc_exit(0);

}

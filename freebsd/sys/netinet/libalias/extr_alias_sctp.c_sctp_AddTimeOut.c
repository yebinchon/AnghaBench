
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_nat_assoc {int exp; int exp_loc; } ;
struct TYPE_2__ {int loc_time; int cur_loc; int * TimerQ; } ;
struct libalias {TYPE_1__ sctpNatTimer; } ;


 int LIBALIAS_LOCK_ASSERT (struct libalias*) ;
 int LIST_INSERT_HEAD (int *,struct sctp_nat_assoc*,int ) ;
 int SN_TIMER_QUEUE_SIZE ;
 int timer_Q ;

__attribute__((used)) static void
sctp_AddTimeOut(struct libalias *la, struct sctp_nat_assoc *assoc)
{
 int add_loc;
 LIBALIAS_LOCK_ASSERT(la);
 add_loc = assoc->exp - la->sctpNatTimer.loc_time + la->sctpNatTimer.cur_loc;
 if (add_loc >= SN_TIMER_QUEUE_SIZE)
  add_loc -= SN_TIMER_QUEUE_SIZE;
 LIST_INSERT_HEAD(&la->sctpNatTimer.TimerQ[add_loc], assoc, timer_Q);
 assoc->exp_loc = add_loc;
}

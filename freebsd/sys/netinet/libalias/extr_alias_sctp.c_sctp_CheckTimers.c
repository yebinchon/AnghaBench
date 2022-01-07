
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_nat_assoc {scalar_t__ exp; scalar_t__ state; int g_vtag; } ;
struct TYPE_2__ {scalar_t__ loc_time; size_t cur_loc; int * TimerQ; } ;
struct libalias {scalar_t__ timeStamp; TYPE_1__ sctpNatTimer; } ;


 int LIBALIAS_LOCK_ASSERT (struct libalias*) ;
 int LIST_EMPTY (int *) ;
 struct sctp_nat_assoc* LIST_FIRST (int *) ;
 int LIST_REMOVE (struct sctp_nat_assoc*,int ) ;
 int RmSctpAssoc (struct libalias*,struct sctp_nat_assoc*) ;
 scalar_t__ SN_CL ;
 int SN_LOG (int ,int ) ;
 int SN_LOG_DEBUG ;
 int SN_LOG_INFO ;
 size_t SN_TIMER_QUEUE_SIZE ;
 int SN_TO_NODIR ;
 int freeGlobalAddressList (struct sctp_nat_assoc*) ;
 int logsctperror (char*,int ,scalar_t__,int ) ;
 int sctp_AddTimeOut (struct libalias*,struct sctp_nat_assoc*) ;
 int sn_free (struct sctp_nat_assoc*) ;
 int timer_Q ;

void
sctp_CheckTimers(struct libalias *la)
{
 struct sctp_nat_assoc *assoc;

 LIBALIAS_LOCK_ASSERT(la);
 while(la->timeStamp >= la->sctpNatTimer.loc_time) {
  while (!LIST_EMPTY(&la->sctpNatTimer.TimerQ[la->sctpNatTimer.cur_loc])) {
   assoc = LIST_FIRST(&la->sctpNatTimer.TimerQ[la->sctpNatTimer.cur_loc]);

   LIST_REMOVE(assoc, timer_Q);
   if (la->timeStamp >= assoc->exp) {
    SN_LOG(((assoc->state == SN_CL) ? (SN_LOG_DEBUG) : (SN_LOG_INFO)),
        logsctperror("Timer Expired", assoc->g_vtag, assoc->state, SN_TO_NODIR));
    RmSctpAssoc(la, assoc);
    freeGlobalAddressList(assoc);
    sn_free(assoc);
   } else {
    sctp_AddTimeOut(la, assoc);
   }
  }

  ++la->sctpNatTimer.loc_time;
  if (++la->sctpNatTimer.cur_loc >= SN_TIMER_QUEUE_SIZE)
   la->sctpNatTimer.cur_loc = 0;
 }
}

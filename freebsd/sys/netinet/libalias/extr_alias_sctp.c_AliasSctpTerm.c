
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_nat_assoc {int dummy; } ;
struct TYPE_2__ {struct sctp_nat_assoc* TimerQ; } ;
struct libalias {TYPE_1__ sctpNatTimer; struct sctp_nat_assoc* sctpTableGlobal; struct sctp_nat_assoc* sctpTableLocal; } ;


 int LIBALIAS_LOCK_ASSERT (struct libalias*) ;
 struct sctp_nat_assoc* LIST_FIRST (struct sctp_nat_assoc*) ;
 struct sctp_nat_assoc* LIST_NEXT (struct sctp_nat_assoc*,int ) ;
 int SN_LOG (int ,int ) ;
 int SN_LOG_EVENT ;
 int SN_TIMER_QUEUE_SIZE ;
 int SctpAliasLog (char*) ;
 int freeGlobalAddressList (struct sctp_nat_assoc*) ;
 int sn_free (struct sctp_nat_assoc*) ;
 int timer_Q ;

void AliasSctpTerm(struct libalias *la)
{
 struct sctp_nat_assoc *assoc1, *assoc2;
 int i;

 LIBALIAS_LOCK_ASSERT(la);
 SN_LOG(SN_LOG_EVENT,
     SctpAliasLog("Removing SCTP NAT Instance\n"));
 for (i = 0; i < SN_TIMER_QUEUE_SIZE; i++) {
  assoc1 = LIST_FIRST(&la->sctpNatTimer.TimerQ[i]);
  while (assoc1 != ((void*)0)) {
   freeGlobalAddressList(assoc1);
   assoc2 = LIST_NEXT(assoc1, timer_Q);
   sn_free(assoc1);
   assoc1 = assoc2;
  }
 }

 sn_free(la->sctpTableLocal);
 sn_free(la->sctpTableGlobal);
 sn_free(la->sctpNatTimer.TimerQ);
}

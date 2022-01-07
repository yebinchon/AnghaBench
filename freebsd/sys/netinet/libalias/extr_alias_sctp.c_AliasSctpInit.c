
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctpTimerQ {int dummy; } ;
struct sctpNatTableL {int dummy; } ;
struct sctpNatTableG {int dummy; } ;
struct TYPE_2__ {scalar_t__ cur_loc; int loc_time; int * TimerQ; } ;
struct libalias {int sctpNatTableSize; scalar_t__ sctpLinkCount; TYPE_1__ sctpNatTimer; int timeStamp; int * sctpTableGlobal; int * sctpTableLocal; } ;


 int LIST_INIT (int *) ;
 int SN_LOG (int ,int ) ;
 int SN_LOG_EVENT ;
 int SN_TIMER_QUEUE_SIZE ;
 int SctpAliasLog (char*,int) ;
 void* sn_calloc (int,int) ;
 int sysctl_hashtable_size ;
 int time_uptime ;

void AliasSctpInit(struct libalias *la)
{

 int i;
 la->sctpNatTableSize = sysctl_hashtable_size;
 SN_LOG(SN_LOG_EVENT,
     SctpAliasLog("Initialising SCTP NAT Instance (hash_table_size:%d)\n", la->sctpNatTableSize));
 la->sctpTableLocal = sn_calloc(la->sctpNatTableSize, sizeof(struct sctpNatTableL));
 la->sctpTableGlobal = sn_calloc(la->sctpNatTableSize, sizeof(struct sctpNatTableG));
 la->sctpNatTimer.TimerQ = sn_calloc(SN_TIMER_QUEUE_SIZE, sizeof(struct sctpTimerQ));

 for (i = 0; i < la->sctpNatTableSize; i++) {
  LIST_INIT(&la->sctpTableLocal[i]);
  LIST_INIT(&la->sctpTableGlobal[i]);
 }


 for (i = 0; i < SN_TIMER_QUEUE_SIZE; i++)
  LIST_INIT(&la->sctpNatTimer.TimerQ[i]);



 la->sctpNatTimer.loc_time=la->timeStamp;

 la->sctpNatTimer.cur_loc = 0;
 la->sctpLinkCount = 0;
}

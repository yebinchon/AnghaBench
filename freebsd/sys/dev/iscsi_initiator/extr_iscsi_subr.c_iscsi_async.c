
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int asyncEvent; int asyncVCode; } ;
struct TYPE_6__ {TYPE_4__ async; } ;
struct TYPE_8__ {TYPE_1__ ipdu; } ;
struct TYPE_7__ {TYPE_3__ pdu; } ;
typedef TYPE_2__ pduq_t ;
typedef TYPE_3__ pdu_t ;
typedef int isc_session_t ;
typedef TYPE_4__ async_t ;


 int debug_called (int) ;
 int isc_stop_receiver (int *) ;
 int sdebug (int,char*,int,int ) ;

void
iscsi_async(isc_session_t *sp, pduq_t *pq)
{
     pdu_t *pp = &pq->pdu;
     async_t *cmd = &pp->ipdu.async;

     debug_called(8);

     sdebug(3, "asyncevent=0x%x asyncVCode=0x%0x", cmd->asyncEvent, cmd->asyncVCode);
     switch(cmd->asyncEvent) {
     case 0:
   break;

     case 1:
   isc_stop_receiver(sp);
   break;

     case 2:
   isc_stop_receiver(sp);
   break;

     case 3:
   isc_stop_receiver(sp);
   break;

     case 4:
   break;

     default:
   break;
     }
}

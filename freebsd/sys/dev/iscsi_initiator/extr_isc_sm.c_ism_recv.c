
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_8__ ;
typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


struct TYPE_30__ {int S; } ;
struct TYPE_31__ {int opcode; int itt; int * OpcodeSpecificFields; } ;
struct TYPE_25__ {TYPE_6__ data_in; TYPE_7__ bhs; } ;
struct TYPE_26__ {TYPE_1__ ipdu; } ;
struct TYPE_28__ {TYPE_2__ pdu; } ;
typedef TYPE_4__ pduq_t ;
struct TYPE_27__ {scalar_t__ expCmd; int stat; int maxCmd; } ;
struct TYPE_29__ {int rsp; TYPE_3__ sn; } ;
typedef TYPE_5__ isc_session_t ;
typedef TYPE_6__ data_in_t ;
typedef TYPE_7__ bhs_t ;
struct TYPE_32__ {scalar_t__ cmd; int expCmd; } ;
 int _async (TYPE_5__*,TYPE_4__*) ;
 int _nop_in (TYPE_5__*,TYPE_4__*) ;
 int _r2t (TYPE_5__*,TYPE_4__*) ;
 int _read_data (TYPE_5__*,TYPE_4__*) ;
 int _reject (TYPE_5__*,TYPE_4__*) ;
 int _scsi_rsp (TYPE_5__*,TYPE_4__*) ;
 int debug_called (int) ;
 int i_nqueue_rsp (TYPE_5__*,TYPE_4__*) ;
 int ntohl (int ) ;
 int sdebug (int,char*,...) ;
 TYPE_8__* sn ;
 int wakeup (int *) ;

void
ism_recv(isc_session_t *sp, pduq_t *pq)
{
     bhs_t *bhs;
     int statSN;

     debug_called(8);

     bhs = &pq->pdu.ipdu.bhs;
     statSN = ntohl(bhs->OpcodeSpecificFields[1]);







     sdebug(5, "opcode=0x%x itt=0x%x stat#0x%x maxcmd=0x%0x",
     bhs->opcode, ntohl(bhs->itt), statSN, sp->sn.maxCmd);

     switch(bhs->opcode) {
     case 132: {
   data_in_t *cmd = &pq->pdu.ipdu.data_in;

   if(cmd->S == 0)
        break;
     }

     default:
   if(statSN > (sp->sn.stat + 1)) {
        sdebug(1, "we lost some rec=0x%x exp=0x%x",
        statSN, sp->sn.stat);

   }
   sp->sn.stat = statSN;
     }

     switch(bhs->opcode) {
     case 136:
     case 128:
     case 135:
   i_nqueue_rsp(sp, pq);
   wakeup(&sp->rsp);
   sdebug(3, "wakeup rsp");
   break;

     case 134: _nop_in(sp, pq); break;
     case 130: _scsi_rsp(sp, pq); break;
     case 132: _read_data(sp, pq); break;
     case 133: _r2t(sp, pq); break;
     case 131: _reject(sp, pq); break;
     case 137: _async(sp, pq); break;

     case 129:
     default:
   sdebug(1, "opcode=0x%x itt=0x%x not implemented yet",
   bhs->opcode, ntohl(bhs->itt));
   break;
     }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_16__ {int ttt; int I; int F; int itt; int opcode; } ;
struct TYPE_12__ {TYPE_5__ nop_out; } ;
struct TYPE_13__ {TYPE_1__ ipdu; } ;
struct TYPE_15__ {TYPE_2__ pdu; } ;
typedef TYPE_4__ pduq_t ;
typedef TYPE_5__ nop_out_t ;
struct TYPE_14__ {int itt; } ;
struct TYPE_17__ {scalar_t__ cws; int isc; TYPE_3__ sn; } ;
typedef TYPE_6__ isc_session_t ;


 int ISCSI_NOP_OUT ;
 int M_NOWAIT ;
 int debug_called (int) ;
 int htonl (int ) ;
 scalar_t__ isc_qout (TYPE_6__*,TYPE_4__*) ;
 TYPE_4__* pdu_alloc (int ,int ) ;
 int pdu_free (int ,TYPE_4__*) ;
 int sdebug (int,char*,...) ;

__attribute__((used)) static void
_nop_out(isc_session_t *sp)
{
     pduq_t *pq;
     nop_out_t *nop_out;

     debug_called(8);

     sdebug(4, "cws=%d", sp->cws);
     if(sp->cws == 0) {



   if((pq = pdu_alloc(sp->isc, M_NOWAIT)) == ((void*)0))

        return;
   nop_out = &pq->pdu.ipdu.nop_out;
   nop_out->opcode = ISCSI_NOP_OUT;
   nop_out->itt = htonl(sp->sn.itt);
   nop_out->ttt = -1;
   nop_out->I = 1;
   nop_out->F = 1;
   if(isc_qout(sp, pq) != 0) {
        sdebug(1, "failed");
        pdu_free(sp->isc, pq);
   }
     }
}

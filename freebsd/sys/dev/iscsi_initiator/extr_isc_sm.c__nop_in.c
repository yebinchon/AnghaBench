
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ maxcmd; } ;
struct TYPE_20__ {int mbz; TYPE_2__ sn; } ;
struct TYPE_23__ {int I; int F; int opcode; } ;
struct TYPE_21__ {int itt; int ttt; } ;
struct TYPE_16__ {TYPE_5__ nop_out; TYPE_8__ bhs; TYPE_6__ nop_in; } ;
struct TYPE_19__ {scalar_t__ ds_len; TYPE_1__ ipdu; } ;
struct TYPE_18__ {TYPE_4__ pdu; } ;
typedef TYPE_3__ pduq_t ;
typedef TYPE_4__ pdu_t ;
typedef TYPE_5__ nop_out_t ;
typedef TYPE_6__ nop_in_t ;
struct TYPE_22__ {int flags; int isc; int rsp; int sid; } ;
typedef TYPE_7__ isc_session_t ;
typedef TYPE_8__ bhs_t ;


 int ISCSI_NOP_OUT ;
 int ISC_WAIT4PING ;
 int debug_called (int) ;
 int htonl (int) ;
 int i_nqueue_rsp (TYPE_7__*,TYPE_3__*) ;
 int isc_qout (TYPE_7__*,TYPE_3__*) ;
 int memset (int ,int ,int) ;
 int pdu_free (int ,TYPE_3__*) ;
 int sdebug (int,char*,int ,int ) ;
 int wakeup (int *) ;
 int xdebug (char*,int ) ;

__attribute__((used)) static void
_nop_in(isc_session_t *sp, pduq_t *pq)
{
     pdu_t *pp = &pq->pdu;
     nop_in_t *nop_in = &pp->ipdu.nop_in;
     bhs_t *bhs = &pp->ipdu.bhs;

     debug_called(8);

     sdebug(5, "itt=%x ttt=%x", htonl(nop_in->itt), htonl(nop_in->ttt));
     if(nop_in->itt == -1) {
   if(pp->ds_len != 0) {




        xdebug("%d] dslen not zero", sp->sid);
   }
   if(nop_in->ttt != -1) {
        nop_out_t *nop_out;



        bhs->opcode = ISCSI_NOP_OUT;
        bhs->I = 1;
        bhs->F = 1;





        nop_out = &pp->ipdu.nop_out;
        nop_out->sn.maxcmd = 0;
        memset(nop_out->mbz, 0, sizeof(nop_out->mbz));
        (void)isc_qout(sp, pq);
        return;
   }





     } else
     if(nop_in->ttt == -1) {



   if(nop_in->itt != -1) {
   }
     }



     pdu_free(sp->isc, pq);
     return;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_21__ ;
typedef struct TYPE_22__ TYPE_1__ ;


struct TYPE_25__ {int itt; int expStat; int maxCmd; int expCmd; int cmd; int stat; } ;
typedef TYPE_3__ sn_t ;
struct TYPE_29__ {int opcode; void* itt; void* ExpStSN; int I; void* CmdSN; } ;
struct TYPE_22__ {TYPE_7__ bhs; } ;
struct TYPE_27__ {TYPE_1__ ipdu; } ;
struct TYPE_26__ {TYPE_21__* ccb; TYPE_5__ pdu; } ;
typedef TYPE_4__ pduq_t ;
typedef TYPE_5__ pdu_t ;
struct TYPE_28__ {int flags; int isc; TYPE_3__ sn; } ;
typedef TYPE_6__ isc_session_t ;
typedef TYPE_7__ bhs_t ;
struct TYPE_24__ {int status; } ;
struct TYPE_23__ {TYPE_2__ ccb_h; } ;


 int BIT (int) ;
 int CAM_REQUEUE_REQ ;
 int ISC_LINK_UP ;
 scalar_t__ SNA_GT (int ,int ) ;
 int XPT_DONE (TYPE_6__*,TYPE_21__*) ;
 int debug_called (int) ;
 void* htonl (int ) ;
 TYPE_4__* i_dqueue_snd (TYPE_6__*,int) ;
 int i_nqueue_hld (TYPE_6__*,TYPE_4__*) ;
 int i_remove_hld (TYPE_6__*,TYPE_4__*) ;
 int i_rqueue_pdu (TYPE_6__*,TYPE_4__*) ;
 int isc_sendPDU (TYPE_6__*,TYPE_4__*) ;
 int ntohl (void*) ;
 int pdu_free (int ,TYPE_4__*) ;
 int sdebug (int,char*,...) ;
 int xdebug (char*,...) ;

__attribute__((used)) static int
proc_out(isc_session_t *sp)
{
     sn_t *sn = &sp->sn;
     pduq_t *pq;
     int error, which;

     debug_called(8);
     error = 0;

     while(sp->flags & ISC_LINK_UP) {
   pdu_t *pp;
   bhs_t *bhs;






   which = BIT(0) | BIT(1);
   if(SNA_GT(sn->cmd, sn->maxCmd) == 0)
        which |= BIT(2);

   sdebug(4, "which=%d sn->maxCmd=%d sn->cmd=%d", which, sn->maxCmd, sn->cmd);

   if((pq = i_dqueue_snd(sp, which)) == ((void*)0))
        break;
   sdebug(4, "pq=%p", pq);

   pp = &pq->pdu;
   bhs = &pp->ipdu.bhs;
   switch(bhs->opcode) {
   case 132:
        sn->itt++;
        bhs->itt = htonl(sn->itt);

   case 135:
   case 129:
   case 134:
   case 131:
   case 133:
   case 130:
        bhs->CmdSN = htonl(sn->cmd);
        if(bhs->I == 0)
      sn->cmd++;

   case 128:
        bhs->ExpStSN = htonl(sn->stat + 1);
        break;

   default:

        xdebug("bad opcode=0x%x sn(cmd=0x%x expCmd=0x%x maxCmd=0x%x expStat=0x%x itt=0x%x)",
        bhs->opcode,
        sn->cmd, sn->expCmd, sn->maxCmd, sn->expStat, sn->itt);

   }

   sdebug(4, "opcode=0x%x sn(cmd=0x%x expCmd=0x%x maxCmd=0x%x expStat=0x%x itt=0x%x)",
  bhs->opcode,
  sn->cmd, sn->expCmd, sn->maxCmd, sn->expStat, sn->itt);

   if(bhs->opcode != 133)





        i_nqueue_hld(sp, pq);

   error = isc_sendPDU(sp, pq);
   if(bhs->opcode == 133)
        pdu_free(sp->isc, pq);
   if(error) {
        xdebug("error=%d opcode=0x%x ccb=%p itt=%x",
        error, bhs->opcode, pq->ccb, ntohl(bhs->itt));
        i_remove_hld(sp, pq);
        switch(error) {
        case 136:
      sp->flags &= ~ISC_LINK_UP;

        case 137:
      xdebug("requed");
      i_rqueue_pdu(sp, pq);
      break;

        default:
      if(pq->ccb) {
    xdebug("back to cam");
    pq->ccb->ccb_h.status |= CAM_REQUEUE_REQ;
    XPT_DONE(sp, pq->ccb);
    pdu_free(sp->isc, pq);
      }
      else
    xdebug("we lost it!");
        }
   }
     }
     return error;
}

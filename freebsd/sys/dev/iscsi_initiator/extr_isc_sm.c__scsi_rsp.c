
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_12__ ;


struct TYPE_18__ {int itt; } ;
struct TYPE_19__ {TYPE_1__ bhs; } ;
struct TYPE_17__ {TYPE_2__ ipdu; } ;
struct TYPE_20__ {TYPE_12__ pdu; } ;
typedef TYPE_3__ pduq_t ;
struct TYPE_21__ {int isc; int sid; } ;
typedef TYPE_4__ isc_session_t ;


 int debug (int,char*,int ,TYPE_3__*,TYPE_3__*) ;
 int debug_called (int) ;
 int i_acked_hld (TYPE_4__*,TYPE_12__*) ;
 TYPE_3__* i_search_hld (TYPE_4__*,int ,int ) ;
 int iscsi_done (TYPE_4__*,TYPE_3__*,TYPE_3__*) ;
 int ntohl (int ) ;
 int pdu_free (int ,TYPE_3__*) ;
 int xdebug (char*,int ,int ) ;

__attribute__((used)) static void
_scsi_rsp(isc_session_t *sp, pduq_t *pq)
{
     pduq_t *opq;

     debug_called(8);
     opq = i_search_hld(sp, pq->pdu.ipdu.bhs.itt, 0);
     debug(5, "itt=%x pq=%p opq=%p", ntohl(pq->pdu.ipdu.bhs.itt), pq, opq);
     if(opq != ((void*)0)) {
   iscsi_done(sp, opq, pq);
   i_acked_hld(sp, &pq->pdu);
     }
     else
   xdebug("%d] we lost something itt=%x",
   sp->sid, ntohl(pq->pdu.ipdu.bhs.itt));
     pdu_free(sp->isc, pq);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_18__ {int ddtl; int bo; int r2tSN; } ;
typedef TYPE_4__ r2t_t ;
struct TYPE_15__ {int itt; } ;
struct TYPE_17__ {TYPE_1__ bhs; TYPE_4__ r2t; } ;
struct TYPE_16__ {TYPE_3__ ipdu; } ;
struct TYPE_19__ {TYPE_2__ pdu; } ;
typedef TYPE_5__ pduq_t ;
struct TYPE_20__ {int isc; int sid; } ;
typedef TYPE_6__ isc_session_t ;


 int debug_called (int) ;
 TYPE_5__* i_search_hld (TYPE_6__*,int ,int) ;
 int iscsi_r2t (TYPE_6__*,TYPE_5__*,TYPE_5__*) ;
 int ntohl (int ) ;
 int pdu_free (int ,TYPE_5__*) ;
 int xdebug (char*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
_r2t(isc_session_t *sp, pduq_t *pq)
{
     pduq_t *opq;

     debug_called(8);
     opq = i_search_hld(sp, pq->pdu.ipdu.bhs.itt, 1);
     if(opq != ((void*)0)) {
   iscsi_r2t(sp, opq, pq);
     }
     else {
   r2t_t *r2t = &pq->pdu.ipdu.r2t;

   xdebug("%d] we lost something itt=%x r2tSN=%d bo=%x ddtl=%x",
   sp->sid, ntohl(pq->pdu.ipdu.bhs.itt),
   ntohl(r2t->r2tSN), ntohl(r2t->bo), ntohl(r2t->ddtl));
     }
     pdu_free(sp->isc, pq);
}

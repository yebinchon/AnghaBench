
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {int itt; } ;
struct TYPE_17__ {TYPE_1__ bhs; } ;
struct TYPE_18__ {TYPE_2__ ipdu; } ;
struct TYPE_19__ {TYPE_3__ pdu; } ;
typedef TYPE_4__ pduq_t ;
struct TYPE_20__ {int isc; int sid; } ;
typedef TYPE_5__ isc_session_t ;


 int debug_called (int) ;
 int i_remove_hld (TYPE_5__*,TYPE_4__*) ;
 TYPE_4__* i_search_hld (TYPE_5__*,int ,int) ;
 int ntohl (int ) ;
 int pdu_free (int ,TYPE_4__*) ;
 int scsi_decap (TYPE_5__*,TYPE_4__*,TYPE_4__*) ;
 int xdebug (char*,int ,int ) ;

__attribute__((used)) static void
_read_data(isc_session_t *sp, pduq_t *pq)
{
     pduq_t *opq;

     debug_called(8);
     opq = i_search_hld(sp, pq->pdu.ipdu.bhs.itt, 1);
     if(opq != ((void*)0)) {
   if(scsi_decap(sp, opq, pq) != 1) {
        i_remove_hld(sp, opq);
        pdu_free(sp->isc, opq);
   }
     }
     else
   xdebug("%d] we lost something itt=%x",
   sp->sid, ntohl(pq->pdu.ipdu.bhs.itt));
     pdu_free(sp->isc, pq);
}

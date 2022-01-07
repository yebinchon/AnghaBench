
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int bhs; } ;
struct TYPE_14__ {TYPE_1__ ipdu; } ;
struct TYPE_16__ {int len; TYPE_2__ pdu; } ;
typedef TYPE_4__ pduq_t ;
struct TYPE_15__ {int t_recv; int nrecv; } ;
struct TYPE_17__ {TYPE_3__ stats; int bhs; int isc; } ;
typedef TYPE_5__ isc_session_t ;
typedef int bhs_t ;


 int M_NOWAIT ;
 int M_WAITOK ;
 int debug (int,char*) ;
 int debug_called (int) ;
 int getbintime (int *) ;
 int ism_recv (TYPE_5__*,TYPE_4__*) ;
 TYPE_4__* pdu_alloc (int ,int ) ;
 int so_getbhs (TYPE_5__*) ;
 int so_recv (TYPE_5__*,TYPE_4__*) ;

__attribute__((used)) static int
so_input(isc_session_t *sp)
{
     pduq_t *pq;
     int error;

     debug_called(8);



     error = so_getbhs(sp);
     if(error == 0) {



   pq = pdu_alloc(sp->isc, M_NOWAIT);
   if(pq == ((void*)0)) {
        debug(2, "out of pdus, wait");
        pq = pdu_alloc(sp->isc, M_WAITOK);
   }
   pq->pdu.ipdu.bhs = sp->bhs;
   pq->len = sizeof(bhs_t);
   error = so_recv(sp, pq);
   if(error != 0) {
        error += 0x800;


   }
   else {
        sp->stats.nrecv++;
        getbintime(&sp->stats.t_recv);
        ism_recv(sp, pq);
   }
     }
     return error;
}

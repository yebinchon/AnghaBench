
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int pduq_t ;
struct TYPE_8__ {int isc; } ;
typedef TYPE_1__ isc_session_t ;


 int debug_called (int) ;
 int * i_dqueue_hld (TYPE_1__*) ;
 int * i_dqueue_rsp (TYPE_1__*) ;
 int * i_dqueue_rsv (TYPE_1__*) ;
 int * i_dqueue_snd (TYPE_1__*,int) ;
 int * i_dqueue_wsnd (TYPE_1__*) ;
 int pdu_free (int ,int *) ;
 int xdebug (char*,int) ;

int
i_pdu_flush(isc_session_t *sp)
{
     int n = 0;
     pduq_t *pq;

     debug_called(8);
     while((pq = i_dqueue_rsp(sp)) != ((void*)0)) {
   pdu_free(sp->isc, pq);
   n++;
     }
     while((pq = i_dqueue_rsv(sp)) != ((void*)0)) {
   pdu_free(sp->isc, pq);
   n++;
     }
     while((pq = i_dqueue_snd(sp, -1)) != ((void*)0)) {
   pdu_free(sp->isc, pq);
   n++;
     }
     while((pq = i_dqueue_hld(sp)) != ((void*)0)) {
   pdu_free(sp->isc, pq);
   n++;
     }
     while((pq = i_dqueue_wsnd(sp)) != ((void*)0)) {
   pdu_free(sp->isc, pq);
   n++;
     }
     if(n != 0)
   xdebug("%d pdus recovered, should have been ZERO!", n);
     return n;
}

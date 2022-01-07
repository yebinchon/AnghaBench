
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umtx_q {struct umtx_q* uq_spare_queue; } ;


 int MPASS (int ) ;
 int M_UMTX ;
 int free (struct umtx_q*,int ) ;

void
umtxq_free(struct umtx_q *uq)
{

 MPASS(uq->uq_spare_queue != ((void*)0));
 free(uq->uq_spare_queue, M_UMTX);
 free(uq, M_UMTX);
}

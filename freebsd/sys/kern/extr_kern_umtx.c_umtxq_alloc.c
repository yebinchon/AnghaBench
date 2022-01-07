
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct umtxq_queue {int dummy; } ;
struct umtx_q {int uq_inherited_pri; int uq_pi_contested; TYPE_1__* uq_spare_queue; } ;
struct TYPE_2__ {int head; } ;


 int M_UMTX ;
 int M_WAITOK ;
 int M_ZERO ;
 int PRI_MAX ;
 int TAILQ_INIT (int *) ;
 void* malloc (int,int ,int) ;

struct umtx_q *
umtxq_alloc(void)
{
 struct umtx_q *uq;

 uq = malloc(sizeof(struct umtx_q), M_UMTX, M_WAITOK | M_ZERO);
 uq->uq_spare_queue = malloc(sizeof(struct umtxq_queue), M_UMTX,
     M_WAITOK | M_ZERO);
 TAILQ_INIT(&uq->uq_spare_queue->head);
 TAILQ_INIT(&uq->uq_pi_contested);
 uq->uq_inherited_pri = PRI_MAX;
 return (uq);
}

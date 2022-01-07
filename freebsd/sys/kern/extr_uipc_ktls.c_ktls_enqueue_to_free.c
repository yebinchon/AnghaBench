
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mbuf_ext_pgs {TYPE_1__* tls; int * mbuf; } ;
struct ktls_wq {int running; int mtx; int head; } ;
struct TYPE_2__ {size_t wq_index; } ;


 int STAILQ_INSERT_TAIL (int *,struct mbuf_ext_pgs*,int ) ;
 struct ktls_wq* ktls_wq ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int stailq ;
 int wakeup (struct ktls_wq*) ;

void
ktls_enqueue_to_free(struct mbuf_ext_pgs *pgs)
{
 struct ktls_wq *wq;
 bool running;


 pgs->mbuf = ((void*)0);
 wq = &ktls_wq[pgs->tls->wq_index];
 mtx_lock(&wq->mtx);
 STAILQ_INSERT_TAIL(&wq->head, pgs, stailq);
 running = wq->running;
 mtx_unlock(&wq->mtx);
 if (!running)
  wakeup(wq);
}

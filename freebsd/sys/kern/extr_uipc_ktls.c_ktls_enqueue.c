
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {int dummy; } ;
struct mbuf_ext_pgs {int enc_cnt; TYPE_2__* tls; struct socket* so; struct mbuf* mbuf; } ;
struct TYPE_3__ {struct mbuf_ext_pgs* ext_pgs; } ;
struct mbuf {int m_flags; TYPE_1__ m_ext; } ;
struct ktls_wq {int running; int mtx; int head; } ;
struct TYPE_4__ {scalar_t__ mode; size_t wq_index; } ;


 int KASSERT (int,char*) ;
 int M_NOMAP ;
 int M_NOTREADY ;
 int STAILQ_INSERT_TAIL (int *,struct mbuf_ext_pgs*,int ) ;
 scalar_t__ TCP_TLS_MODE_SW ;
 int counter_u64_add (int ,int) ;
 int ktls_cnt_on ;
 struct ktls_wq* ktls_wq ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int stailq ;
 int wakeup (struct ktls_wq*) ;

void
ktls_enqueue(struct mbuf *m, struct socket *so, int page_count)
{
 struct mbuf_ext_pgs *pgs;
 struct ktls_wq *wq;
 bool running;

 KASSERT(((m->m_flags & (M_NOMAP | M_NOTREADY)) ==
     (M_NOMAP | M_NOTREADY)),
     ("ktls_enqueue: %p not unready & nomap mbuf\n", m));
 KASSERT(page_count != 0, ("enqueueing TLS mbuf with zero page count"));

 pgs = m->m_ext.ext_pgs;

 KASSERT(pgs->tls->mode == TCP_TLS_MODE_SW, ("!SW TLS mbuf"));

 pgs->enc_cnt = page_count;
 pgs->mbuf = m;





 pgs->so = so;

 wq = &ktls_wq[pgs->tls->wq_index];
 mtx_lock(&wq->mtx);
 STAILQ_INSERT_TAIL(&wq->head, pgs, stailq);
 running = wq->running;
 mtx_unlock(&wq->mtx);
 if (!running)
  wakeup(wq);
 counter_u64_add(ktls_cnt_on, 1);
}

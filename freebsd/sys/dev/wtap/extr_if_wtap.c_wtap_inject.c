
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wtap_softc {int sc_mtx; int sc_rxtask; int sc_tq; int sc_rxbuf; } ;
struct wtap_buf {struct mbuf* m; } ;
struct mbuf {int dummy; } ;


 int KASSERT (int ,char*) ;
 int M_NOWAIT ;
 int M_WTAP_RXBUF ;
 int M_ZERO ;
 int STAILQ_INSERT_TAIL (int *,struct wtap_buf*,int ) ;
 int bf_list ;
 scalar_t__ malloc (int,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int taskqueue_enqueue (int ,int *) ;

void
wtap_inject(struct wtap_softc *sc, struct mbuf *m)
{
      struct wtap_buf *bf = (struct wtap_buf *)malloc(sizeof(struct wtap_buf),
          M_WTAP_RXBUF, M_NOWAIT | M_ZERO);
      KASSERT(bf != ((void*)0), ("could not allocated a new wtap_buf\n"));
      bf->m = m;

      mtx_lock(&sc->sc_mtx);
      STAILQ_INSERT_TAIL(&sc->sc_rxbuf, bf, bf_list);
      taskqueue_enqueue(sc->sc_tq, &sc->sc_rxtask);
      mtx_unlock(&sc->sc_mtx);
}

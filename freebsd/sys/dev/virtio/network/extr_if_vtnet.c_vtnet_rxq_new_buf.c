
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_softc {int vtnet_rx_nmbufs; } ;
struct vtnet_rxq {struct vtnet_softc* vtnrx_sc; } ;
struct mbuf {int dummy; } ;


 int ENOBUFS ;
 int m_freem (struct mbuf*) ;
 struct mbuf* vtnet_rx_alloc_buf (struct vtnet_softc*,int ,int *) ;
 int vtnet_rxq_enqueue_buf (struct vtnet_rxq*,struct mbuf*) ;

__attribute__((used)) static int
vtnet_rxq_new_buf(struct vtnet_rxq *rxq)
{
 struct vtnet_softc *sc;
 struct mbuf *m;
 int error;

 sc = rxq->vtnrx_sc;

 m = vtnet_rx_alloc_buf(sc, sc->vtnet_rx_nmbufs, ((void*)0));
 if (m == ((void*)0))
  return (ENOBUFS);

 error = vtnet_rxq_enqueue_buf(rxq, m);
 if (error)
  m_freem(m);

 return (error);
}

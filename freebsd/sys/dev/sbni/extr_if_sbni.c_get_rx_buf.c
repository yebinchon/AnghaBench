
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sbni_softc {struct mbuf* rx_buf_p; int ifp; } ;
struct TYPE_2__ {scalar_t__ len; } ;
struct mbuf {scalar_t__ m_len; TYPE_1__ m_pkthdr; } ;


 scalar_t__ ETHER_MAX_LEN ;
 int MCLGET (struct mbuf*,int ) ;
 int MGETHDR (struct mbuf*,int ,int ) ;
 scalar_t__ MHLEN ;
 int MT_DATA ;
 int M_NOWAIT ;
 int if_printf (int ,char*) ;
 int m_adj (struct mbuf*,int) ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static int
get_rx_buf(struct sbni_softc *sc)
{
 struct mbuf *m;

 MGETHDR(m, M_NOWAIT, MT_DATA);
 if (m == ((void*)0)) {
  if_printf(sc->ifp, "cannot allocate header mbuf\n");
  return (0);
 }







 if (ETHER_MAX_LEN + 2 > MHLEN) {

  if (!(MCLGET(m, M_NOWAIT))) {
   m_freem(m);
   return (0);
  }
 }
 m->m_pkthdr.len = m->m_len = ETHER_MAX_LEN + 2;






 m_adj(m, 2);
 sc->rx_buf_p = m;
 return (1);
}

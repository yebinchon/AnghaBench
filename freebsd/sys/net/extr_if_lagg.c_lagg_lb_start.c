
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_2__ {size_t flowid; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct lagg_softc {int sc_opts; size_t flowid_shift; size_t sc_count; int sc_flags; scalar_t__ sc_psc; } ;
struct lagg_port {int lp_ifp; } ;
struct lagg_lb {struct lagg_port** lb_ports; int lb_key; } ;


 int ENETDOWN ;
 int LAGG_OPT_USE_FLOWID ;
 scalar_t__ M_HASHTYPE_GET (struct mbuf*) ;
 scalar_t__ M_HASHTYPE_NONE ;
 int lagg_enqueue (int ,struct mbuf*) ;
 struct lagg_port* lagg_link_active (struct lagg_softc*,struct lagg_port*) ;
 size_t m_ether_tcpip_hash (int ,struct mbuf*,int ) ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static int
lagg_lb_start(struct lagg_softc *sc, struct mbuf *m)
{
 struct lagg_lb *lb = (struct lagg_lb *)sc->sc_psc;
 struct lagg_port *lp = ((void*)0);
 uint32_t p = 0;

 if ((sc->sc_opts & LAGG_OPT_USE_FLOWID) &&
     M_HASHTYPE_GET(m) != M_HASHTYPE_NONE)
  p = m->m_pkthdr.flowid >> sc->flowid_shift;
 else
  p = m_ether_tcpip_hash(sc->sc_flags, m, lb->lb_key);
 p %= sc->sc_count;
 lp = lb->lb_ports[p];





 if ((lp = lagg_link_active(sc, lp)) == ((void*)0)) {
  m_freem(m);
  return (ENETDOWN);
 }


 return (lagg_enqueue(lp->lp_ifp, m));
}

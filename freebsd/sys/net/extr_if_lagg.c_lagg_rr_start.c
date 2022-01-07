
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mbuf {int dummy; } ;
struct lagg_softc {scalar_t__ sc_bkt_count; scalar_t__ sc_bkt; int sc_ports; int sc_count; int sc_seq; } ;
struct lagg_port {int lp_ifp; } ;


 struct lagg_port* CK_SLIST_FIRST (int *) ;
 struct lagg_port* CK_SLIST_NEXT (struct lagg_port*,int ) ;
 int ENETDOWN ;
 scalar_t__ atomic_cmpset_int (scalar_t__*,int ,scalar_t__) ;
 int atomic_fetchadd_32 (int *,int) ;
 int atomic_subtract_int (scalar_t__*,int) ;
 int lagg_enqueue (int ,struct mbuf*) ;
 struct lagg_port* lagg_link_active (struct lagg_softc*,struct lagg_port*) ;
 int lp_entries ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static int
lagg_rr_start(struct lagg_softc *sc, struct mbuf *m)
{
 struct lagg_port *lp;
 uint32_t p;

 if (sc->sc_bkt_count == 0 && sc->sc_bkt > 0)
  sc->sc_bkt_count = sc->sc_bkt;

 if (sc->sc_bkt > 0) {
  atomic_subtract_int(&sc->sc_bkt_count, 1);
 if (atomic_cmpset_int(&sc->sc_bkt_count, 0, sc->sc_bkt))
  p = atomic_fetchadd_32(&sc->sc_seq, 1);
 else
  p = sc->sc_seq;
 } else
  p = atomic_fetchadd_32(&sc->sc_seq, 1);

 p %= sc->sc_count;
 lp = CK_SLIST_FIRST(&sc->sc_ports);

 while (p--)
  lp = CK_SLIST_NEXT(lp, lp_entries);





 if ((lp = lagg_link_active(sc, lp)) == ((void*)0)) {
  m_freem(m);
  return (ENETDOWN);
 }


 return (lagg_enqueue(lp->lp_ifp, m));
}

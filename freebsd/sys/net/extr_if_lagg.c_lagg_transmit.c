
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int csum_flags; TYPE_1__* snd_tag; } ;
struct mbuf {TYPE_2__ m_pkthdr; } ;
struct lagg_softc {scalar_t__ sc_proto; scalar_t__ sc_count; } ;
struct ifnet {scalar_t__ if_softc; } ;
struct TYPE_3__ {struct ifnet* ifp; } ;


 int CSUM_SND_TAG ;
 int ENXIO ;
 int ETHER_BPF_MTAP (struct ifnet*,struct mbuf*) ;
 int IFCOUNTER_OERRORS ;
 scalar_t__ LAGG_PROTO_NONE ;
 int LAGG_RLOCK () ;
 int LAGG_RUNLOCK () ;
 int MPASS (int) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int lagg_proto_start (struct lagg_softc*,struct mbuf*) ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static int
lagg_transmit(struct ifnet *ifp, struct mbuf *m)
{
 struct lagg_softc *sc = (struct lagg_softc *)ifp->if_softc;
 int error;





 LAGG_RLOCK();

 if (sc->sc_proto == LAGG_PROTO_NONE || sc->sc_count == 0) {
  LAGG_RUNLOCK();
  m_freem(m);
  if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
  return (ENXIO);
 }

 ETHER_BPF_MTAP(ifp, m);

 error = lagg_proto_start(sc, m);
 LAGG_RUNLOCK();

 if (error != 0)
  if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);

 return (error);
}

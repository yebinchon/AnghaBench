
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xae_softc {struct ifnet* ifp; } ;
struct ifnet {int dummy; } ;


 int IFCOUNTER_COLLISIONS ;
 int IFCOUNTER_IERRORS ;
 int IFCOUNTER_IMCASTS ;
 int IFCOUNTER_IPACKETS ;
 int IFCOUNTER_OBYTES ;
 int IFCOUNTER_OERRORS ;
 int IFCOUNTER_OMCASTS ;
 int IFCOUNTER_OPACKETS ;
 int RX_ALIGNMENT_ERRORS ;
 int RX_FRAME_CHECK_SEQ_ERROR ;
 int RX_GOOD_FRAMES ;
 int RX_GOOD_MCASTS ;
 int RX_LEN_OUT_OF_RANGE ;
 int TX_BYTES ;
 int TX_EXCESS_COLLISIONS ;
 int TX_GOOD_FRAMES ;
 int TX_GOOD_MCASTS ;
 int TX_GOOD_UNDERRUN_ERRORS ;
 int TX_LATE_COLLISIONS ;
 int TX_MULTI_COLLISION_FRAMES ;
 int TX_SINGLE_COLLISION_FRAMES ;
 int if_inc_counter (struct ifnet*,int ,scalar_t__) ;
 scalar_t__ xae_stat (struct xae_softc*,int ) ;

__attribute__((used)) static void
xae_harvest_stats(struct xae_softc *sc)
{
 struct ifnet *ifp;

 ifp = sc->ifp;

 if_inc_counter(ifp, IFCOUNTER_IPACKETS, xae_stat(sc, RX_GOOD_FRAMES));
 if_inc_counter(ifp, IFCOUNTER_IMCASTS, xae_stat(sc, RX_GOOD_MCASTS));
 if_inc_counter(ifp, IFCOUNTER_IERRORS,
     xae_stat(sc, RX_FRAME_CHECK_SEQ_ERROR) +
     xae_stat(sc, RX_LEN_OUT_OF_RANGE) +
     xae_stat(sc, RX_ALIGNMENT_ERRORS));

 if_inc_counter(ifp, IFCOUNTER_OBYTES, xae_stat(sc, TX_BYTES));
 if_inc_counter(ifp, IFCOUNTER_OPACKETS, xae_stat(sc, TX_GOOD_FRAMES));
 if_inc_counter(ifp, IFCOUNTER_OMCASTS, xae_stat(sc, TX_GOOD_MCASTS));
 if_inc_counter(ifp, IFCOUNTER_OERRORS,
     xae_stat(sc, TX_GOOD_UNDERRUN_ERRORS));

 if_inc_counter(ifp, IFCOUNTER_COLLISIONS,
     xae_stat(sc, TX_SINGLE_COLLISION_FRAMES) +
     xae_stat(sc, TX_MULTI_COLLISION_FRAMES) +
     xae_stat(sc, TX_LATE_COLLISIONS) +
     xae_stat(sc, TX_EXCESS_COLLISIONS));
}

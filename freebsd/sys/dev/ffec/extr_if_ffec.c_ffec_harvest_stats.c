
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;
struct ffec_softc {struct ifnet* ifp; } ;


 int FEC_IEEE_R_DROP ;
 int FEC_IEEE_R_MACERR ;
 int FEC_RMON_R_CRC_ALIGN ;
 int FEC_RMON_R_FRAG ;
 int FEC_RMON_R_JAB ;
 int FEC_RMON_R_MC_PKT ;
 int FEC_RMON_R_OVERSIZE ;
 int FEC_RMON_R_PACKETS ;
 int FEC_RMON_R_UNDERSIZE ;
 int FEC_RMON_T_COL ;
 int FEC_RMON_T_CRC_ALIGN ;
 int FEC_RMON_T_FRAG ;
 int FEC_RMON_T_JAB ;
 int FEC_RMON_T_MC_PKT ;
 int FEC_RMON_T_OVERSIZE ;
 int FEC_RMON_T_PACKETS ;
 int FEC_RMON_T_UNDERSIZE ;
 int IFCOUNTER_COLLISIONS ;
 int IFCOUNTER_IERRORS ;
 int IFCOUNTER_IMCASTS ;
 int IFCOUNTER_IPACKETS ;
 int IFCOUNTER_IQDROPS ;
 int IFCOUNTER_OERRORS ;
 int IFCOUNTER_OMCASTS ;
 int IFCOUNTER_OPACKETS ;
 scalar_t__ RD4 (struct ffec_softc*,int ) ;
 int ffec_clear_stats (struct ffec_softc*) ;
 int if_inc_counter (struct ifnet*,int ,scalar_t__) ;

__attribute__((used)) static void
ffec_harvest_stats(struct ffec_softc *sc)
{
 struct ifnet *ifp;

 ifp = sc->ifp;






 if_inc_counter(ifp, IFCOUNTER_IPACKETS, RD4(sc, FEC_RMON_R_PACKETS));
 if_inc_counter(ifp, IFCOUNTER_IMCASTS, RD4(sc, FEC_RMON_R_MC_PKT));
 if_inc_counter(ifp, IFCOUNTER_IERRORS,
     RD4(sc, FEC_RMON_R_CRC_ALIGN) + RD4(sc, FEC_RMON_R_UNDERSIZE) +
     RD4(sc, FEC_RMON_R_OVERSIZE) + RD4(sc, FEC_RMON_R_FRAG) +
     RD4(sc, FEC_RMON_R_JAB) + RD4(sc, FEC_IEEE_R_DROP));

 if_inc_counter(ifp, IFCOUNTER_IQDROPS, RD4(sc, FEC_IEEE_R_MACERR));

 if_inc_counter(ifp, IFCOUNTER_OPACKETS, RD4(sc, FEC_RMON_T_PACKETS));
 if_inc_counter(ifp, IFCOUNTER_OMCASTS, RD4(sc, FEC_RMON_T_MC_PKT));
 if_inc_counter(ifp, IFCOUNTER_OERRORS,
     RD4(sc, FEC_RMON_T_CRC_ALIGN) + RD4(sc, FEC_RMON_T_UNDERSIZE) +
     RD4(sc, FEC_RMON_T_OVERSIZE) + RD4(sc, FEC_RMON_T_FRAG) +
     RD4(sc, FEC_RMON_T_JAB));

 if_inc_counter(ifp, IFCOUNTER_COLLISIONS, RD4(sc, FEC_RMON_T_COL));

 ffec_clear_stats(sc);
}

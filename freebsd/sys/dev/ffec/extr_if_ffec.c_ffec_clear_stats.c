
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ffec_softc {scalar_t__ fectype; } ;


 scalar_t__ FECTYPE_IMX6 ;
 scalar_t__ FECTYPE_MVF ;
 int FEC_IEEE_R_DROP ;
 int FEC_IEEE_R_MACERR ;
 int FEC_MIBC_CLEAR ;
 int FEC_MIBC_DIS ;
 int FEC_MIBC_REG ;
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
 int RD4 (struct ffec_softc*,int ) ;
 int WR4 (struct ffec_softc*,int ,int) ;

__attribute__((used)) static void ffec_clear_stats(struct ffec_softc *sc)
{
 uint32_t mibc;

 mibc = RD4(sc, FEC_MIBC_REG);






 if (sc->fectype == FECTYPE_IMX6 || sc->fectype == FECTYPE_MVF) {
  WR4(sc, FEC_MIBC_REG, mibc | FEC_MIBC_CLEAR);
  WR4(sc, FEC_MIBC_REG, mibc & ~FEC_MIBC_CLEAR);
 } else {
  WR4(sc, FEC_MIBC_REG, mibc | FEC_MIBC_DIS);

  WR4(sc, FEC_IEEE_R_DROP, 0);
  WR4(sc, FEC_IEEE_R_MACERR, 0);
  WR4(sc, FEC_RMON_R_CRC_ALIGN, 0);
  WR4(sc, FEC_RMON_R_FRAG, 0);
  WR4(sc, FEC_RMON_R_JAB, 0);
  WR4(sc, FEC_RMON_R_MC_PKT, 0);
  WR4(sc, FEC_RMON_R_OVERSIZE, 0);
  WR4(sc, FEC_RMON_R_PACKETS, 0);
  WR4(sc, FEC_RMON_R_UNDERSIZE, 0);
  WR4(sc, FEC_RMON_T_COL, 0);
  WR4(sc, FEC_RMON_T_CRC_ALIGN, 0);
  WR4(sc, FEC_RMON_T_FRAG, 0);
  WR4(sc, FEC_RMON_T_JAB, 0);
  WR4(sc, FEC_RMON_T_MC_PKT, 0);
  WR4(sc, FEC_RMON_T_OVERSIZE , 0);
  WR4(sc, FEC_RMON_T_PACKETS, 0);
  WR4(sc, FEC_RMON_T_UNDERSIZE, 0);

  WR4(sc, FEC_MIBC_REG, mibc);
 }
}

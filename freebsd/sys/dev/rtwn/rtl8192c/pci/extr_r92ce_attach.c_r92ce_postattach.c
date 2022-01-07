
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int ic_scan_end; int ic_scan_start; } ;
struct rtwn_softc {char* fwname; int fwsig; struct ieee80211com sc_ic; struct r92c_softc* sc_priv; } ;
struct r92c_softc {int chip; scalar_t__ board_type; int rs_scan_end; int rs_scan_start; int * rs_txagc; } ;


 scalar_t__ R92C_BOARD_TYPE_HIGHPA ;
 int R92C_CHIP_92C ;
 int R92C_CHIP_UMC_A_CUT ;
 int r92c_scan_end ;
 int r92c_scan_start ;
 int * rtl8188ru_txagc ;
 int * rtl8192cu_txagc ;

__attribute__((used)) static void
r92ce_postattach(struct rtwn_softc *sc)
{
 struct r92c_softc *rs = sc->sc_priv;
 struct ieee80211com *ic = &sc->sc_ic;

 if (!(rs->chip & R92C_CHIP_92C) &&
     rs->board_type == R92C_BOARD_TYPE_HIGHPA)
  rs->rs_txagc = &rtl8188ru_txagc[0];
 else
  rs->rs_txagc = &rtl8192cu_txagc[0];

 if ((rs->chip & (R92C_CHIP_UMC_A_CUT | R92C_CHIP_92C)) ==
     R92C_CHIP_UMC_A_CUT)
  sc->fwname = "rtwn-rtl8192cfwE";
 else
  sc->fwname = "rtwn-rtl8192cfwE_B";
 sc->fwsig = 0x88c;

 rs->rs_scan_start = ic->ic_scan_start;
 ic->ic_scan_start = r92c_scan_start;
 rs->rs_scan_end = ic->ic_scan_end;
 ic->ic_scan_end = r92c_scan_end;
}

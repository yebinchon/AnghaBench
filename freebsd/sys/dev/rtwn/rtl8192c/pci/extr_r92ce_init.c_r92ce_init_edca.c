
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;


 int R92C_EDCA_BE_PARAM ;
 int R92C_EDCA_BK_PARAM ;
 int R92C_EDCA_VI_PARAM ;
 int R92C_EDCA_VO_PARAM ;
 int R92C_MAC_SPEC_SIFS ;
 int R92C_SIFS_CCK ;
 int R92C_SIFS_OFDM ;
 int R92C_SPEC_SIFS ;
 int rtwn_write_2 (struct rtwn_softc*,int ,int) ;
 int rtwn_write_4 (struct rtwn_softc*,int ,int) ;

void
r92ce_init_edca(struct rtwn_softc *sc)
{

 rtwn_write_2(sc, R92C_SPEC_SIFS, 0x1010);
 rtwn_write_2(sc, R92C_MAC_SPEC_SIFS, 0x1010);
 rtwn_write_2(sc, R92C_SIFS_CCK, 0x1010);
 rtwn_write_2(sc, R92C_SIFS_OFDM, 0x0e0e);

 rtwn_write_4(sc, R92C_EDCA_BE_PARAM, 0x005ea42b);
 rtwn_write_4(sc, R92C_EDCA_BK_PARAM, 0x0000a44f);
 rtwn_write_4(sc, R92C_EDCA_VI_PARAM, 0x005e4322);
 rtwn_write_4(sc, R92C_EDCA_VO_PARAM, 0x002f3222);
}

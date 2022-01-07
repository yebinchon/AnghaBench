
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {struct r12a_softc* sc_priv; } ;
struct r12a_softc {int rs_flags; int ampdu_max_time; int rs_iq_calib_sw; int rs_iq_calib_fw_supported; int rs_crystalcap_write; int rs_init_ampdu_fwhw; int rs_init_burstlen; int rs_set_band_5ghz; int rs_set_band_2ghz; int rs_fix_spur; } ;


 int M_RTWN_PRIV ;
 int M_WAITOK ;
 int M_ZERO ;
 int R12A_RXCKSUM6_EN ;
 int R12A_RXCKSUM_EN ;
 struct r12a_softc* malloc (int,int ,int) ;
 int r12a_crystalcap_write ;
 int r12a_fix_spur ;
 int r12a_iq_calib_fw_supported ;
 int r12a_iq_calib_sw ;
 int r12a_set_band_2ghz ;
 int r12a_set_band_5ghz ;
 int r12au_init_ampdu_fwhw ;
 int r12au_init_burstlen ;

__attribute__((used)) static void
r12a_attach_private(struct rtwn_softc *sc)
{
 struct r12a_softc *rs;

 rs = malloc(sizeof(struct r12a_softc), M_RTWN_PRIV, M_WAITOK | M_ZERO);

 rs->rs_flags = R12A_RXCKSUM_EN | R12A_RXCKSUM6_EN;

 rs->rs_fix_spur = r12a_fix_spur;
 rs->rs_set_band_2ghz = r12a_set_band_2ghz;
 rs->rs_set_band_5ghz = r12a_set_band_5ghz;
 rs->rs_init_burstlen = r12au_init_burstlen;
 rs->rs_init_ampdu_fwhw = r12au_init_ampdu_fwhw;
 rs->rs_crystalcap_write = r12a_crystalcap_write;

 rs->rs_iq_calib_fw_supported = r12a_iq_calib_fw_supported;

 rs->rs_iq_calib_sw = r12a_iq_calib_sw;

 rs->ampdu_max_time = 0x70;

 sc->sc_priv = rs;
}

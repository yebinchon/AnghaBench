
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct rtwn_softc {struct r12a_softc* sc_priv; int sc_dev; } ;
struct r12a_softc {int rs_flags; int ampdu_max_time; int ac_usb_dma_size; int ac_usb_dma_time; int rs_iq_calib_sw; int rs_iq_calib_fw_supported; int rs_crystalcap_write; int rs_init_ampdu_fwhw; int rs_init_burstlen; int rs_set_band_5ghz; int rs_set_band_2ghz; int rs_fix_spur; scalar_t__ rs_radar; } ;


 int CTLFLAG_RDTUN ;
 int M_RTWN_PRIV ;
 int M_WAITOK ;
 int M_ZERO ;
 int OID_AUTO ;
 int R12A_RXCKSUM6_EN ;
 int R12A_RXCKSUM_EN ;
 int SYSCTL_ADD_INT (struct sysctl_ctx_list*,int ,int ,char*,int ,scalar_t__*,scalar_t__,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 struct r12a_softc* malloc (int,int ,int) ;
 int r12au_init_burstlen_usb2 ;
 int r21a_crystalcap_write ;
 int r21a_init_ampdu_fwhw ;
 int r21a_iq_calib_fw_supported ;
 int r21a_iq_calib_sw ;
 int r21a_set_band_2ghz ;
 int r21a_set_band_5ghz ;
 int rtwn_nop_softc_chan ;

__attribute__((used)) static void
r21a_attach_private(struct rtwn_softc *sc)
{
 struct sysctl_ctx_list *ctx = device_get_sysctl_ctx(sc->sc_dev);
 struct sysctl_oid *tree = device_get_sysctl_tree(sc->sc_dev);
 struct r12a_softc *rs;

 rs = malloc(sizeof(struct r12a_softc), M_RTWN_PRIV, M_WAITOK | M_ZERO);

 rs->rs_flags = R12A_RXCKSUM_EN | R12A_RXCKSUM6_EN;

 rs->rs_radar = 0;
 SYSCTL_ADD_INT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
     "radar_detection", CTLFLAG_RDTUN, &rs->rs_radar,
     rs->rs_radar, "Enable radar detection (untested)");

 rs->rs_fix_spur = rtwn_nop_softc_chan;
 rs->rs_set_band_2ghz = r21a_set_band_2ghz;
 rs->rs_set_band_5ghz = r21a_set_band_5ghz;
 rs->rs_init_burstlen = r12au_init_burstlen_usb2;
 rs->rs_init_ampdu_fwhw = r21a_init_ampdu_fwhw;
 rs->rs_crystalcap_write = r21a_crystalcap_write;

 rs->rs_iq_calib_fw_supported = r21a_iq_calib_fw_supported;

 rs->rs_iq_calib_sw = r21a_iq_calib_sw;

 rs->ampdu_max_time = 0x5e;

 rs->ac_usb_dma_size = 0x01;
 rs->ac_usb_dma_time = 0x10;

 sc->sc_priv = rs;
}

#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct rtwn_softc {struct r12a_softc* sc_priv; int /*<<< orphan*/  sc_dev; } ;
struct r12a_softc {int rs_flags; int ampdu_max_time; int ac_usb_dma_size; int ac_usb_dma_time; int /*<<< orphan*/  rs_iq_calib_sw; int /*<<< orphan*/  rs_iq_calib_fw_supported; int /*<<< orphan*/  rs_crystalcap_write; int /*<<< orphan*/  rs_init_ampdu_fwhw; int /*<<< orphan*/  rs_init_burstlen; int /*<<< orphan*/  rs_set_band_5ghz; int /*<<< orphan*/  rs_set_band_2ghz; int /*<<< orphan*/  rs_fix_spur; scalar_t__ rs_radar; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RDTUN ; 
 int /*<<< orphan*/  M_RTWN_PRIV ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int R12A_RXCKSUM6_EN ; 
 int R12A_RXCKSUM_EN ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_oid*) ; 
 struct sysctl_ctx_list* FUNC2 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC3 (int /*<<< orphan*/ ) ; 
 struct r12a_softc* FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  r12au_init_burstlen_usb2 ; 
 int /*<<< orphan*/  r21a_crystalcap_write ; 
 int /*<<< orphan*/  r21a_init_ampdu_fwhw ; 
 int /*<<< orphan*/  r21a_iq_calib_fw_supported ; 
 int /*<<< orphan*/  r21a_iq_calib_sw ; 
 int /*<<< orphan*/  r21a_set_band_2ghz ; 
 int /*<<< orphan*/  r21a_set_band_5ghz ; 
 int /*<<< orphan*/  rtwn_nop_softc_chan ; 

__attribute__((used)) static void
FUNC5(struct rtwn_softc *sc)
{
	struct sysctl_ctx_list *ctx = FUNC2(sc->sc_dev);
	struct sysctl_oid *tree = FUNC3(sc->sc_dev);
	struct r12a_softc *rs;

	rs = FUNC4(sizeof(struct r12a_softc), M_RTWN_PRIV, M_WAITOK | M_ZERO);

	rs->rs_flags			= R12A_RXCKSUM_EN | R12A_RXCKSUM6_EN;

	rs->rs_radar = 0;
	FUNC0(ctx, FUNC1(tree), OID_AUTO,
	    "radar_detection", CTLFLAG_RDTUN, &rs->rs_radar,
	    rs->rs_radar, "Enable radar detection (untested)");

	rs->rs_fix_spur			= rtwn_nop_softc_chan;
	rs->rs_set_band_2ghz		= r21a_set_band_2ghz;
	rs->rs_set_band_5ghz		= r21a_set_band_5ghz;
	rs->rs_init_burstlen		= r12au_init_burstlen_usb2;
	rs->rs_init_ampdu_fwhw		= r21a_init_ampdu_fwhw;
	rs->rs_crystalcap_write		= r21a_crystalcap_write;
#ifndef RTWN_WITHOUT_UCODE
	rs->rs_iq_calib_fw_supported	= r21a_iq_calib_fw_supported;
#endif
	rs->rs_iq_calib_sw		= r21a_iq_calib_sw;

	rs->ampdu_max_time		= 0x5e;

	rs->ac_usb_dma_size		= 0x01;
	rs->ac_usb_dma_time		= 0x10;

	sc->sc_priv			= rs;
}
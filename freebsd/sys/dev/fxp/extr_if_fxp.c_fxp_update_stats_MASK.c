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
typedef  scalar_t__ uint32_t ;
struct fxp_stats {scalar_t__ completion_status; scalar_t__ tx_pause; scalar_t__ tx_good; scalar_t__ tx_maxcols; scalar_t__ tx_latecols; scalar_t__ tx_underruns; scalar_t__ tx_lostcrs; scalar_t__ tx_deffered; scalar_t__ tx_single_collisions; scalar_t__ tx_multiple_collisions; scalar_t__ tx_total_collisions; scalar_t__ rx_good; scalar_t__ rx_crc_errors; scalar_t__ rx_alignment_errors; scalar_t__ rx_rnr_errors; scalar_t__ rx_overrun_errors; scalar_t__ rx_cdt_errors; scalar_t__ rx_shortframes; scalar_t__ rx_pause; scalar_t__ rx_controls; int /*<<< orphan*/  rx_tco; int /*<<< orphan*/  tx_tco; } ;
struct fxp_hwstats {int /*<<< orphan*/  rx_tco; int /*<<< orphan*/  tx_tco; int /*<<< orphan*/  rx_controls; int /*<<< orphan*/  rx_pause; int /*<<< orphan*/  tx_pause; int /*<<< orphan*/  rx_shortframes; int /*<<< orphan*/  rx_cdt_errors; int /*<<< orphan*/  rx_overrun_errors; int /*<<< orphan*/  rx_rnr_errors; int /*<<< orphan*/  rx_alignment_errors; int /*<<< orphan*/  rx_crc_errors; int /*<<< orphan*/  rx_good; int /*<<< orphan*/  tx_total_collisions; int /*<<< orphan*/  tx_multiple_collisions; int /*<<< orphan*/  tx_single_collisions; int /*<<< orphan*/  tx_deffered; int /*<<< orphan*/  tx_lostcrs; int /*<<< orphan*/  tx_underruns; int /*<<< orphan*/  tx_latecols; int /*<<< orphan*/  tx_maxcols; int /*<<< orphan*/  tx_good; } ;
struct fxp_softc {scalar_t__ revision; int flags; int /*<<< orphan*/  fxp_smap; int /*<<< orphan*/  fxp_stag; scalar_t__ rx_idle_secs; struct fxp_hwstats fxp_hwstats; struct fxp_stats* fxp_stats; int /*<<< orphan*/  ifp; } ;
typedef  int /*<<< orphan*/  if_t ;

/* Variables and functions */
 int BUS_DMASYNC_POSTREAD ; 
 int BUS_DMASYNC_POSTWRITE ; 
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int FXP_FLAG_RXBUG ; 
 int /*<<< orphan*/  FUNC0 (struct fxp_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FXP_REV_82558_A4 ; 
 scalar_t__ FXP_REV_82559_A0 ; 
 int /*<<< orphan*/  FXP_STATS_DR_COMPLETE ; 
 int /*<<< orphan*/  IFCOUNTER_COLLISIONS ; 
 int /*<<< orphan*/  IFCOUNTER_IERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_IPACKETS ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_OPACKETS ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int tx_threshold ; 

__attribute__((used)) static void
FUNC6(struct fxp_softc *sc)
{
	if_t ifp = sc->ifp;
	struct fxp_stats *sp = sc->fxp_stats;
	struct fxp_hwstats *hsp;
	uint32_t *status;

	FUNC0(sc, MA_OWNED);

	FUNC1(sc->fxp_stag, sc->fxp_smap,
	    BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);
	/* Update statistical counters. */
	if (sc->revision >= FXP_REV_82559_A0)
		status = &sp->completion_status;
	else if (sc->revision >= FXP_REV_82558_A4)
		status = (uint32_t *)&sp->tx_tco;
	else
		status = &sp->tx_pause;
	if (*status == FUNC2(FXP_STATS_DR_COMPLETE)) {
		hsp = &sc->fxp_hwstats;
		hsp->tx_good += FUNC5(sp->tx_good);
		hsp->tx_maxcols += FUNC5(sp->tx_maxcols);
		hsp->tx_latecols += FUNC5(sp->tx_latecols);
		hsp->tx_underruns += FUNC5(sp->tx_underruns);
		hsp->tx_lostcrs += FUNC5(sp->tx_lostcrs);
		hsp->tx_deffered += FUNC5(sp->tx_deffered);
		hsp->tx_single_collisions += FUNC5(sp->tx_single_collisions);
		hsp->tx_multiple_collisions +=
		    FUNC5(sp->tx_multiple_collisions);
		hsp->tx_total_collisions += FUNC5(sp->tx_total_collisions);
		hsp->rx_good += FUNC5(sp->rx_good);
		hsp->rx_crc_errors += FUNC5(sp->rx_crc_errors);
		hsp->rx_alignment_errors += FUNC5(sp->rx_alignment_errors);
		hsp->rx_rnr_errors += FUNC5(sp->rx_rnr_errors);
		hsp->rx_overrun_errors += FUNC5(sp->rx_overrun_errors);
		hsp->rx_cdt_errors += FUNC5(sp->rx_cdt_errors);
		hsp->rx_shortframes += FUNC5(sp->rx_shortframes);
		hsp->tx_pause += FUNC5(sp->tx_pause);
		hsp->rx_pause += FUNC5(sp->rx_pause);
		hsp->rx_controls += FUNC5(sp->rx_controls);
		hsp->tx_tco += FUNC4(sp->tx_tco);
		hsp->rx_tco += FUNC4(sp->rx_tco);

		FUNC3(ifp, IFCOUNTER_OPACKETS, FUNC5(sp->tx_good));
		FUNC3(ifp, IFCOUNTER_COLLISIONS,
		    FUNC5(sp->tx_total_collisions));
		if (sp->rx_good) {
			FUNC3(ifp, IFCOUNTER_IPACKETS,
			    FUNC5(sp->rx_good));
			sc->rx_idle_secs = 0;
		} else if (sc->flags & FXP_FLAG_RXBUG) {
			/*
			 * Receiver's been idle for another second.
			 */
			sc->rx_idle_secs++;
		}
		FUNC3(ifp, IFCOUNTER_IERRORS,
		    FUNC5(sp->rx_crc_errors) +
		    FUNC5(sp->rx_alignment_errors) +
		    FUNC5(sp->rx_rnr_errors) +
		    FUNC5(sp->rx_overrun_errors));
		/*
		 * If any transmit underruns occurred, bump up the transmit
		 * threshold by another 512 bytes (64 * 8).
		 */
		if (sp->tx_underruns) {
			FUNC3(ifp, IFCOUNTER_OERRORS,
			    FUNC5(sp->tx_underruns));
			if (tx_threshold < 192)
				tx_threshold += 64;
		}
		*status = 0;
		FUNC1(sc->fxp_stag, sc->fxp_smap,
		    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
	}
}
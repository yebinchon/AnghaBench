#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct ath_descdma {int dd_descsize; } ;
struct ath_softc {int sc_tx_nmaps; int /*<<< orphan*/  sc_dmat; int /*<<< orphan*/  sc_tx_desclen; struct ath_hal* sc_ah; struct ath_descdma sc_txdma; } ;
struct ath_hal {int dummy; } ;
struct ath_desc {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  bfs_ndelim; int /*<<< orphan*/  bfs_tx_queue; } ;
struct ath_buf {int bf_nseg; int /*<<< orphan*/  bf_dmamap; struct ath_desc* bf_lastds; TYPE_2__ bf_state; int /*<<< orphan*/  bf_descid; scalar_t__ bf_daddr; TYPE_1__* bf_segs; scalar_t__ bf_desc; } ;
typedef  int /*<<< orphan*/  segLenList ;
typedef  int /*<<< orphan*/  bufAddrList ;
struct TYPE_3__ {int /*<<< orphan*/  ds_len; int /*<<< orphan*/  ds_addr; } ;
typedef  int /*<<< orphan*/  HAL_DMA_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hal*,struct ath_desc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*,struct ath_desc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct ath_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,struct ath_desc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*,struct ath_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hal*,struct ath_desc*,scalar_t__) ; 
 scalar_t__ FUNC5 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC8(struct ath_softc *sc, struct ath_desc *ds0,
    struct ath_buf *bf, int is_aggr, int is_first_subframe,
    int is_last_subframe)
{
	struct ath_hal *ah = sc->sc_ah;
	char *ds;
	int i, bp, dsp;
	HAL_DMA_ADDR bufAddrList[4];
	uint32_t segLenList[4];
	int numTxMaps = 1;
	int isFirstDesc = 1;

	/*
	 * XXX There's txdma and txdma_mgmt; the descriptor
	 * sizes must match.
	 */
	struct ath_descdma *dd = &sc->sc_txdma;

	/*
	 * Fillin the remainder of the descriptor info.
	 */

	/*
	 * We need the number of TX data pointers in each descriptor.
	 * EDMA and later chips support 4 TX buffers per descriptor;
	 * previous chips just support one.
	 */
	numTxMaps = sc->sc_tx_nmaps;

	/*
	 * For EDMA and later chips ensure the TX map is fully populated
	 * before advancing to the next descriptor.
	 */
	ds = (char *) bf->bf_desc;
	bp = dsp = 0;
	FUNC7(bufAddrList, sizeof(bufAddrList));
	FUNC7(segLenList, sizeof(segLenList));
	for (i = 0; i < bf->bf_nseg; i++) {
		bufAddrList[bp] = bf->bf_segs[i].ds_addr;
		segLenList[bp] = bf->bf_segs[i].ds_len;
		bp++;

		/*
		 * Go to the next segment if this isn't the last segment
		 * and there's space in the current TX map.
		 */
		if ((i != bf->bf_nseg - 1) && (bp < numTxMaps))
			continue;

		/*
		 * Last segment or we're out of buffer pointers.
		 */
		bp = 0;

		if (i == bf->bf_nseg - 1)
			FUNC4(ah, (struct ath_desc *) ds, 0);
		else
			FUNC4(ah, (struct ath_desc *) ds,
			    bf->bf_daddr + dd->dd_descsize * (dsp + 1));

		/*
		 * XXX This assumes that bfs_txq is the actual destination
		 * hardware queue at this point.  It may not have been
		 * assigned, it may actually be pointing to the multicast
		 * software TXQ id.  These must be fixed!
		 */
		FUNC1(ah, (struct ath_desc *) ds
			, bufAddrList
			, segLenList
			, bf->bf_descid		/* XXX desc id */
			, bf->bf_state.bfs_tx_queue
			, isFirstDesc		/* first segment */
			, i == bf->bf_nseg - 1	/* last segment */
			, (struct ath_desc *) ds0	/* first descriptor */
		);

		/*
		 * Make sure the 11n aggregate fields are cleared.
		 *
		 * XXX TODO: this doesn't need to be called for
		 * aggregate frames; as it'll be called on all
		 * sub-frames.  Since the descriptors are in
		 * non-cacheable memory, this leads to some
		 * rather slow writes on MIPS/ARM platforms.
		 */
		if (FUNC5(sc))
			FUNC0(sc->sc_ah, (struct ath_desc *) ds);

		/*
		 * If 11n is enabled, set it up as if it's an aggregate
		 * frame.
		 */
		if (is_last_subframe) {
			FUNC2(sc->sc_ah,
			    (struct ath_desc *) ds);
		} else if (is_aggr) {
			/*
			 * This clears the aggrlen field; so
			 * the caller needs to call set_aggr_first()!
			 *
			 * XXX TODO: don't call this for the first
			 * descriptor in the first frame in an
			 * aggregate!
			 */
			FUNC3(sc->sc_ah,
			    (struct ath_desc *) ds,
			    bf->bf_state.bfs_ndelim);
		}
		isFirstDesc = 0;
		bf->bf_lastds = (struct ath_desc *) ds;

		/*
		 * Don't forget to skip to the next descriptor.
		 */
		ds += sc->sc_tx_desclen;
		dsp++;

		/*
		 * .. and don't forget to blank these out!
		 */
		FUNC7(bufAddrList, sizeof(bufAddrList));
		FUNC7(segLenList, sizeof(segLenList));
	}
	FUNC6(sc->sc_dmat, bf->bf_dmamap, BUS_DMASYNC_PREWRITE);
}
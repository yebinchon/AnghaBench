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
typedef  int uint32_t ;
struct bwi_txbuf_data {scalar_t__ tbd_used; scalar_t__ tbd_idx; } ;
struct bwi_softc {int /*<<< orphan*/  sc_txring_dtag; struct bwi_txbuf_data* sc_tx_bdata; struct bwi_ring_data* sc_tx_rdata; } ;
struct bwi_ring_data {scalar_t__ rdata_txrx_ctrl; int /*<<< orphan*/  rdata_paddr; int /*<<< orphan*/  rdata_dmap; int /*<<< orphan*/  rdata_desc; } ;
struct bwi_desc32 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 scalar_t__ BWI_TX32_CTRL ; 
 scalar_t__ BWI_TX32_RINGINFO ; 
 int /*<<< orphan*/  BWI_TXRX32_CTRL_ADDRHI_MASK ; 
 int BWI_TXRX32_CTRL_ENABLE ; 
 int /*<<< orphan*/  BWI_TXRX32_RINGINFO_ADDR_MASK ; 
 int /*<<< orphan*/  BWI_TXRX32_RINGINFO_FUNC_MASK ; 
 int BWI_TXRX32_RINGINFO_FUNC_TXRX ; 
 int BWI_TX_NDESC ; 
 int BWI_TX_NRING ; 
 int /*<<< orphan*/  FUNC0 (struct bwi_softc*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(struct bwi_softc *sc, int ring_idx)
{
	struct bwi_ring_data *rd;
	struct bwi_txbuf_data *tbd;
	uint32_t val, addr_hi, addr_lo;

	FUNC1(ring_idx < BWI_TX_NRING, ("ring_idx %d", ring_idx));
	rd = &sc->sc_tx_rdata[ring_idx];
	tbd = &sc->sc_tx_bdata[ring_idx];

	tbd->tbd_idx = 0;
	tbd->tbd_used = 0;

	FUNC5(rd->rdata_desc, sizeof(struct bwi_desc32) * BWI_TX_NDESC);
	FUNC4(sc->sc_txring_dtag, rd->rdata_dmap,
			BUS_DMASYNC_PREWRITE);

	addr_lo = FUNC3(rd->rdata_paddr, BWI_TXRX32_RINGINFO_ADDR_MASK);
	addr_hi = FUNC3(rd->rdata_paddr, BWI_TXRX32_RINGINFO_FUNC_MASK);

	val = FUNC2(addr_lo, BWI_TXRX32_RINGINFO_ADDR_MASK) |
	      FUNC2(BWI_TXRX32_RINGINFO_FUNC_TXRX,
	      		BWI_TXRX32_RINGINFO_FUNC_MASK);
	FUNC0(sc, rd->rdata_txrx_ctrl + BWI_TX32_RINGINFO, val);

	val = FUNC2(addr_hi, BWI_TXRX32_CTRL_ADDRHI_MASK) |
	      BWI_TXRX32_CTRL_ENABLE;
	FUNC0(sc, rd->rdata_txrx_ctrl + BWI_TX32_CTRL, val);

	return 0;
}
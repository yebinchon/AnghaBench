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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
struct nlm_xlpnae_softc {int nucores; int sgmiimask; int xauimask; int /*<<< orphan*/  portcfg; int /*<<< orphan*/  base; scalar_t__ ieee_1588_en; int /*<<< orphan*/  prepad_size; scalar_t__ prepad_en; scalar_t__ hw_parser_en; int /*<<< orphan*/  poedv_base; int /*<<< orphan*/  poe_base; int /*<<< orphan*/  max_ports; int /*<<< orphan*/  flow_crc_poly; int /*<<< orphan*/  ncontexts; int /*<<< orphan*/  freq; int /*<<< orphan*/  nblocks; } ;

/* Variables and functions */
 int /*<<< orphan*/  DFS_DEVICE_NAE ; 
 int /*<<< orphan*/  MAX_POE_CLASSES ; 
 int /*<<< orphan*/  NAE_LANE_CFG_SOFTRESET ; 
 int /*<<< orphan*/  NAE_RX_CONFIG ; 
 int /*<<< orphan*/  NAE_TX_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct nlm_xlpnae_softc*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  poe_cl_tbl ; 
 int /*<<< orphan*/  FUNC21 (char*,int) ; 

__attribute__((used)) static void
FUNC22(int node, struct nlm_xlpnae_softc *sc)
{
	uint64_t nae_base;
	uint32_t ucoremask = 0;
	uint32_t val;
	int i;

	nae_base = sc->base;

	FUNC5(nae_base, sc->nblocks);
	FUNC1(nae_base, sc->max_ports);
	FUNC8(node);

	for (i = 0; i < sc->nucores; i++)	/* XXXJC: code repeated below */
		ucoremask |= (0x1 << i);
	FUNC21("Loading 0x%x ucores with microcode\n", ucoremask);
	FUNC18(nae_base, ucoremask, 1);

	val = FUNC9(node, DFS_DEVICE_NAE, sc->freq);
	FUNC21("Setup NAE frequency to %dMHz\n", val);

	FUNC4(nae_base);

	FUNC21("Initialze SGMII PCS for blocks 0x%x\n", sc->sgmiimask);
	FUNC17(nae_base, sc->sgmiimask);

	FUNC21("Initialze XAUI PCS for blocks 0x%x\n", sc->xauimask);
	FUNC20(nae_base, sc->xauimask);

	/* clear NETIOR soft reset */
	FUNC19(nae_base, NAE_LANE_CFG_SOFTRESET, 0x0);

	/* Disable RX enable bit in RX_CONFIG */
	val = FUNC7(nae_base, NAE_RX_CONFIG);
	val &= 0xfffffffe;
	FUNC19(nae_base, NAE_RX_CONFIG, val);

	if (FUNC3() == 0) {
		val = FUNC7(nae_base, NAE_TX_CONFIG);
		val &= ~(1 << 3);
		FUNC19(nae_base, NAE_TX_CONFIG, val);
	}

	FUNC13(nae_base, MAX_POE_CLASSES,
	    sc->ncontexts, poe_cl_tbl);

	FUNC16(nae_base);

	FUNC11(nae_base, sc->flow_crc_poly);

	FUNC14(nae_base, sc->max_ports, sc->portcfg);
	/* note: xlp8xx Ax does not have Tx Calendering */
	if (!FUNC3())
		FUNC15(nae_base, sc->max_ports, sc->portcfg);

	FUNC12(sc);
	FUNC0(sc->poe_base, sc->poedv_base);

	if (sc->hw_parser_en)
		FUNC2(nae_base);

	if (sc->prepad_en)
		FUNC6(nae_base, sc->prepad_size);

	if (sc->ieee_1588_en)
		FUNC10(sc->base, sc->portcfg);
}
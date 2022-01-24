#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
struct xlpge_tx_desc {int dummy; } ;
struct xlp_nae_ivars {int blockmask; int nblocks; TYPE_2__* block_ivars; int /*<<< orphan*/  ieee_1588_en; int /*<<< orphan*/  prepad_size; int /*<<< orphan*/  prepad_en; int /*<<< orphan*/  hw_parser_en; int /*<<< orphan*/  flow_crc_poly; int /*<<< orphan*/  freq; int /*<<< orphan*/  sgmiimask; int /*<<< orphan*/  xauimask; int /*<<< orphan*/  ilmask; int /*<<< orphan*/  node; } ;
struct nlm_xlpnae_softc {int blockmask; int nblocks; int ncontexts; int* portmask; int max_ports; int total_num_ports; int per_port_num_flows; int /*<<< orphan*/  poe_base; int /*<<< orphan*/  poedv_base; TYPE_4__* portcfg; int /*<<< orphan*/  base; int /*<<< orphan*/  node; scalar_t__ total_free_desc; int /*<<< orphan*/ * cmplx_type; int /*<<< orphan*/  nucores; int /*<<< orphan*/  ieee_1588_en; int /*<<< orphan*/  prepad_size; int /*<<< orphan*/  prepad_en; int /*<<< orphan*/  hw_parser_en; int /*<<< orphan*/  flow_crc_poly; int /*<<< orphan*/  freq; int /*<<< orphan*/  sgmiimask; int /*<<< orphan*/  xauimask; int /*<<< orphan*/  ilmask; int /*<<< orphan*/  xlpnae_dev; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_13__ {scalar_t__ type; int num_channels; int txq; int rxfreeq; int block; int port; } ;
struct TYPE_12__ {TYPE_1__* nodes; } ;
struct TYPE_11__ {int portmask; int /*<<< orphan*/ * port_ivars; int /*<<< orphan*/  type; } ;
struct TYPE_10__ {struct xlp_nae_ivars nae_ivars; } ;

/* Variables and functions */
 int /*<<< orphan*/  NAE_CACHELINE_SIZE ; 
 int NUM_WORDS_PER_DV ; 
 int /*<<< orphan*/  POE_DISTR_EN ; 
 int PORTS_PER_CMPLX ; 
 scalar_t__ UNKNOWN ; 
 int XLPGE_RX_VC ; 
 int /*<<< orphan*/  XLP_PCI_DEVINFO_REG5 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int* cntx2port ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 struct nlm_xlpnae_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_4__* nae_port_config ; 
 int /*<<< orphan*/  nl_tx_desc_zone ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,TYPE_4__*) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC20 (struct nlm_xlpnae_softc*,struct xlp_nae_ivars*,int,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nlm_xlpge_msgring_handler ; 
 int /*<<< orphan*/  FUNC25 (int,struct nlm_xlpnae_softc*) ; 
 int /*<<< orphan*/  FUNC26 (struct nlm_xlpnae_softc*) ; 
 int /*<<< orphan*/  FUNC27 (char*) ; 
 int FUNC28 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC29 (int,int,int /*<<< orphan*/ ,struct nlm_xlpnae_softc*) ; 
 int /*<<< orphan*/  FUNC30 (char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC31 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__ xlp_board_info ; 

__attribute__((used)) static int
FUNC32(device_t dev)
{
	struct xlp_nae_ivars	*nae_ivars;
	struct nlm_xlpnae_softc *sc;
	device_t tmpd;
	uint32_t dv[NUM_WORDS_PER_DV];
	int port, i, j, nchan, nblock, node, qstart, qnum;
	int offset, context, txq_base, rxvcbase;
	uint64_t poe_pcibase, nae_pcibase;

	node = FUNC28(dev) / 8;
	nae_ivars = &xlp_board_info.nodes[node].nae_ivars;

	sc = FUNC3(dev);
	sc->xlpnae_dev = dev;
	sc->node = nae_ivars->node;
	sc->base = FUNC8(sc->node);
	sc->poe_base = FUNC10(sc->node);
	sc->poedv_base = FUNC11(sc->node);
	sc->portcfg = nae_port_config;
	sc->blockmask = nae_ivars->blockmask;
	sc->ilmask = nae_ivars->ilmask;
	sc->xauimask = nae_ivars->xauimask;
	sc->sgmiimask = nae_ivars->sgmiimask;
	sc->nblocks = nae_ivars->nblocks;
	sc->freq = nae_ivars->freq;

	/* flow table generation is done by CRC16 polynomial */
	sc->flow_crc_poly = nae_ivars->flow_crc_poly;

	sc->hw_parser_en = nae_ivars->hw_parser_en;
	sc->prepad_en = nae_ivars->prepad_en;
	sc->prepad_size = nae_ivars->prepad_size;
	sc->ieee_1588_en = nae_ivars->ieee_1588_en;

	nae_pcibase = FUNC7(sc->node);
	sc->ncontexts = FUNC17(nae_pcibase, XLP_PCI_DEVINFO_REG5);
	sc->nucores = FUNC12(nae_pcibase);

	for (nblock = 0; nblock < sc->nblocks; nblock++) {
		sc->cmplx_type[nblock] = nae_ivars->block_ivars[nblock].type;
		sc->portmask[nblock] = nae_ivars->block_ivars[nblock].portmask;
	}

	for (i = 0; i < sc->ncontexts; i++)
		cntx2port[i] = 18;	/* 18 is an invalid port */

	if (sc->nblocks == 5)
		sc->max_ports = 18;	/* 8xx has a block 4 with 2 ports */
	else
		sc->max_ports = sc->nblocks * PORTS_PER_CMPLX;

	for (i = 0; i < sc->max_ports; i++)
		sc->portcfg[i].type = UNKNOWN; /* Port Not Present */
	/*
	 * Now setup all internal fifo carvings based on
	 * total number of ports in the system
	 */
	sc->total_free_desc = 0;
	sc->total_num_ports = 0;
	port = 0;
	context = 0;
	txq_base = FUNC15(nae_pcibase);
	rxvcbase = txq_base + sc->ncontexts;
	for (i = 0; i < sc->nblocks; i++) {
		uint32_t portmask;

		if ((nae_ivars->blockmask & (1 << i)) == 0) {
			port += 4;
			continue;
		}
		portmask = nae_ivars->block_ivars[i].portmask;
		for (j = 0; j < PORTS_PER_CMPLX; j++, port++) {
			if ((portmask & (1 << j)) == 0)
				continue;
			FUNC20(sc, nae_ivars, i, port);
			nchan = sc->portcfg[port].num_channels;
			for (offset = 0; offset < nchan; offset++)
				cntx2port[context + offset] = port;
			sc->portcfg[port].txq = txq_base + context;
			sc->portcfg[port].rxfreeq = rxvcbase + port;
			context += nchan;
		}
	}

	poe_pcibase = FUNC9(sc->node);
	sc->per_port_num_flows =
	    FUNC13(poe_pcibase) / sc->total_num_ports;

	/* zone for P2P descriptors */
	nl_tx_desc_zone = FUNC31("NL Tx Desc",
	    sizeof(struct xlpge_tx_desc), NULL, NULL, NULL, NULL,
	    NAE_CACHELINE_SIZE, 0);

	/* NAE FMN messages have CMS src station id's in the
	 * range of qstart to qnum.
	 */
	qstart = FUNC15(nae_pcibase);
	qnum = FUNC16(nae_pcibase);
	if (FUNC29(qstart, qstart + qnum - 1,
	    nlm_xlpge_msgring_handler, sc)) {
		FUNC27("Couldn't register NAE msgring handler\n");
	}

	/* POE FMN messages have CMS src station id's in the
	 * range of qstart to qnum.
	 */
	qstart = FUNC15(poe_pcibase);
	qnum = FUNC16(poe_pcibase);
	if (FUNC29(qstart, qstart + qnum - 1,
	    nlm_xlpge_msgring_handler, sc)) {
		FUNC27("Couldn't register POE msgring handler\n");
	}

	FUNC25(node, sc);

	for (i = 0; i < sc->max_ports; i++) {
		char desc[32];
		int block, port;

		if (sc->portcfg[i].type == UNKNOWN)
			continue;
		block = sc->portcfg[i].block;
		port = sc->portcfg[i].port;
		tmpd = FUNC2(dev, "xlpge", i);
		FUNC5(tmpd,
		    &(nae_ivars->block_ivars[block].port_ivars[port]));
		FUNC30(desc, "XLP NAE Port %d,%d", block, port);
		FUNC4(tmpd, desc);
	}
	FUNC19(sc->base, sc->max_ports, sc->portcfg);
	FUNC21(sc->base, sc->max_ports, sc->portcfg);
	FUNC22(sc->base, sc->max_ports, sc->portcfg);
	FUNC18(sc->base, sc->portcfg);
	FUNC14(sc->base, sc->max_ports, sc->portcfg);

	FUNC26(sc);
	FUNC1(dev);
	FUNC0(dev);

	/*
	 * Enable only boot cpu at this point, full distribution comes
	 * only after SMP is started
	 */
	FUNC24(sc->poe_base, POE_DISTR_EN, 0);
	FUNC6(0x1, 0, 0, 0, 0x1 << XLPGE_RX_VC, dv);
	FUNC23(sc->poedv_base, 0, dv);
	FUNC24(sc->poe_base, POE_DISTR_EN, 1);

	return (0);
}
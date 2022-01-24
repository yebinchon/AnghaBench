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
typedef  int uint32_t ;
struct msk_stat_desc {int /*<<< orphan*/  msk_status; int /*<<< orphan*/  msk_control; } ;
struct msk_softc {int msk_stat_cons; int msk_process_limit; struct msk_if_softc** msk_if; int /*<<< orphan*/  msk_stat_map; int /*<<< orphan*/  msk_stat_tag; int /*<<< orphan*/  msk_stat_count; int /*<<< orphan*/  msk_dev; struct msk_stat_desc* msk_stat_ring; } ;
struct TYPE_4__ {int msk_rx_putwm; } ;
struct msk_if_softc {int msk_csum; TYPE_2__ msk_cdata; scalar_t__ msk_framesize; TYPE_1__* msk_ifp; void* msk_vtag; } ;
struct TYPE_3__ {int if_drv_flags; } ;

/* Variables and functions */
 int BUS_DMASYNC_POSTREAD ; 
 int BUS_DMASYNC_POSTWRITE ; 
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int FUNC0 (struct msk_softc*,int /*<<< orphan*/ ) ; 
 int HW_OWNER ; 
 int IFF_DRV_RUNNING ; 
 scalar_t__ MCLBYTES ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 size_t MSK_PORT_A ; 
 size_t MSK_PORT_B ; 
 scalar_t__ MSK_RX_BUF_ALIGN ; 
#define  OP_RXCHKS 132 
#define  OP_RXCHKSVLAN 131 
#define  OP_RXSTAT 130 
#define  OP_RXVLAN 129 
#define  OP_TXINDEXLE 128 
 int /*<<< orphan*/  STAT_PUT_IDX ; 
 int STLE_LEN_MASK ; 
 int STLE_OP_MASK ; 
 int STLE_TXA1_MSKL ; 
 int STLE_TXA2_MSKH ; 
 int STLE_TXA2_MSKL ; 
 int STLE_TXA2_SHIFTH ; 
 int STLE_TXA2_SHIFTL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct msk_if_softc*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct msk_if_softc*,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct msk_if_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct msk_if_softc*,int) ; 
 void* FUNC10 (int) ; 

__attribute__((used)) static int
FUNC11(struct msk_softc *sc)
{
	struct msk_if_softc *sc_if;
	int rxput[2];
	struct msk_stat_desc *sd;
	uint32_t control, status;
	int cons, len, port, rxprog;

	if (sc->msk_stat_cons == FUNC0(sc, STAT_PUT_IDX))
		return (0);

	/* Sync status LEs. */
	FUNC2(sc->msk_stat_tag, sc->msk_stat_map,
	    BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);

	rxput[MSK_PORT_A] = rxput[MSK_PORT_B] = 0;
	rxprog = 0;
	cons = sc->msk_stat_cons;
	for (;;) {
		sd = &sc->msk_stat_ring[cons];
		control = FUNC5(sd->msk_control);
		if ((control & HW_OWNER) == 0)
			break;
		control &= ~HW_OWNER;
		sd->msk_control = FUNC4(control);
		status = FUNC5(sd->msk_status);
		len = control & STLE_LEN_MASK;
		port = (control >> 16) & 0x01;
		sc_if = sc->msk_if[port];
		if (sc_if == NULL) {
			FUNC3(sc->msk_dev, "invalid port opcode "
			    "0x%08x\n", control & STLE_OP_MASK);
			continue;
		}

		switch (control & STLE_OP_MASK) {
		case OP_RXVLAN:
			sc_if->msk_vtag = FUNC10(len);
			break;
		case OP_RXCHKSVLAN:
			sc_if->msk_vtag = FUNC10(len);
			/* FALLTHROUGH */
		case OP_RXCHKS:
			sc_if->msk_csum = status;
			break;
		case OP_RXSTAT:
			if (!(sc_if->msk_ifp->if_drv_flags & IFF_DRV_RUNNING))
				break;
			if (sc_if->msk_framesize >
			    (MCLBYTES - MSK_RX_BUF_ALIGN))
				FUNC6(sc_if, status, control, len);
			else
				FUNC7(sc_if, status, control, len);
			rxprog++;
			/*
			 * Because there is no way to sync single Rx LE
			 * put the DMA sync operation off until the end of
			 * event processing.
			 */
			rxput[port]++;
			/* Update prefetch unit if we've passed water mark. */
			if (rxput[port] >= sc_if->msk_cdata.msk_rx_putwm) {
				FUNC8(sc_if);
				rxput[port] = 0;
			}
			break;
		case OP_TXINDEXLE:
			if (sc->msk_if[MSK_PORT_A] != NULL)
				FUNC9(sc->msk_if[MSK_PORT_A],
				    status & STLE_TXA1_MSKL);
			if (sc->msk_if[MSK_PORT_B] != NULL)
				FUNC9(sc->msk_if[MSK_PORT_B],
				    ((status & STLE_TXA2_MSKL) >>
				    STLE_TXA2_SHIFTL) |
				    ((len & STLE_TXA2_MSKH) <<
				    STLE_TXA2_SHIFTH));
			break;
		default:
			FUNC3(sc->msk_dev, "unhandled opcode 0x%08x\n",
			    control & STLE_OP_MASK);
			break;
		}
		FUNC1(cons, sc->msk_stat_count);
		if (rxprog > sc->msk_process_limit)
			break;
	}

	sc->msk_stat_cons = cons;
	FUNC2(sc->msk_stat_tag, sc->msk_stat_map,
	    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

	if (rxput[MSK_PORT_A] > 0)
		FUNC8(sc->msk_if[MSK_PORT_A]);
	if (rxput[MSK_PORT_B] > 0)
		FUNC8(sc->msk_if[MSK_PORT_B]);

	return (sc->msk_stat_cons != FUNC0(sc, STAT_PUT_IDX));
}
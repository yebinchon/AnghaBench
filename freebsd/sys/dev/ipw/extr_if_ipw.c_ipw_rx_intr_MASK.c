#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct ipw_status {int /*<<< orphan*/  code; int /*<<< orphan*/  flags; int /*<<< orphan*/  len; } ;
struct ipw_softc {int flags; int rxcur; int /*<<< orphan*/  rbd_map; int /*<<< orphan*/  rbd_dmat; int /*<<< orphan*/  sc_dev; struct ipw_soft_bd* srbd_list; struct ipw_status* status_list; int /*<<< orphan*/  status_map; int /*<<< orphan*/  status_dmat; } ;
struct ipw_soft_buf {int dummy; } ;
struct ipw_soft_bd {TYPE_1__* bd; struct ipw_soft_buf* priv; } ;
struct TYPE_2__ {scalar_t__ flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int FUNC0 (struct ipw_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipw_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  IPW_CSR_RX_READ ; 
 int /*<<< orphan*/  IPW_CSR_RX_WRITE ; 
 int IPW_FLAG_FW_INITED ; 
 int IPW_NRBD ; 
#define  IPW_STATUS_CODE_COMMAND 132 
#define  IPW_STATUS_CODE_DATA_802_11 131 
#define  IPW_STATUS_CODE_DATA_802_3 130 
#define  IPW_STATUS_CODE_NEWSTATE 129 
#define  IPW_STATUS_CODE_NOTIFICATION 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ipw_softc*,struct ipw_soft_buf*) ; 
 int /*<<< orphan*/  FUNC6 (struct ipw_softc*,struct ipw_status*,struct ipw_soft_bd*,struct ipw_soft_buf*) ; 
 int /*<<< orphan*/  FUNC7 (struct ipw_softc*,struct ipw_soft_buf*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(struct ipw_softc *sc)
{
	struct ipw_status *status;
	struct ipw_soft_bd *sbd;
	struct ipw_soft_buf *sbuf;
	uint32_t r, i;

	if (!(sc->flags & IPW_FLAG_FW_INITED))
		return;

	r = FUNC0(sc, IPW_CSR_RX_READ);

	FUNC3(sc->status_dmat, sc->status_map, BUS_DMASYNC_POSTREAD);

	for (i = (sc->rxcur + 1) % IPW_NRBD; i != r; i = (i + 1) % IPW_NRBD) {
		status = &sc->status_list[i];
		sbd = &sc->srbd_list[i];
		sbuf = sbd->priv;

		switch (FUNC8(status->code) & 0xf) {
		case IPW_STATUS_CODE_COMMAND:
			FUNC5(sc, sbuf);
			break;

		case IPW_STATUS_CODE_NEWSTATE:
			FUNC7(sc, sbuf);
			break;

		case IPW_STATUS_CODE_DATA_802_3:
		case IPW_STATUS_CODE_DATA_802_11:
			FUNC6(sc, status, sbd, sbuf);
			break;

		case IPW_STATUS_CODE_NOTIFICATION:
			FUNC2(2, ("notification status, len %u flags 0x%x\n",
			    FUNC9(status->len), status->flags));
			/* XXX maybe drive state machine AUTH->ASSOC? */
			break;

		default:
			FUNC4(sc->sc_dev, "unexpected status code %u\n",
			    FUNC8(status->code));
		}

		/* firmware was killed, stop processing received frames */
		if (!(sc->flags & IPW_FLAG_FW_INITED))
			return;

		sbd->bd->flags = 0;
	}

	FUNC3(sc->rbd_dmat, sc->rbd_map, BUS_DMASYNC_PREWRITE);

	/* kick the firmware */
	sc->rxcur = (r == 0) ? IPW_NRBD - 1 : r - 1;
	FUNC1(sc, IPW_CSR_RX_WRITE, sc->rxcur);
}
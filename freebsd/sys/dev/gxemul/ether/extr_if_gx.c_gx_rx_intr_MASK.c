#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_4__ {scalar_t__ len; TYPE_2__* rcvif; } ;
struct mbuf {scalar_t__ m_len; TYPE_1__ m_pkthdr; int /*<<< orphan*/  m_data; } ;
struct gx_softc {TYPE_2__* sc_ifp; int /*<<< orphan*/  sc_dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* if_input ) (TYPE_2__*,struct mbuf*) ;} ;

/* Variables and functions */
 scalar_t__ ETHER_ALIGN ; 
 int /*<<< orphan*/  GXEMUL_ETHER_DEV_BUFFER ; 
 int /*<<< orphan*/  GXEMUL_ETHER_DEV_COMMAND ; 
 int /*<<< orphan*/  GXEMUL_ETHER_DEV_COMMAND_RX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GXEMUL_ETHER_DEV_LENGTH ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GXEMUL_ETHER_DEV_STATUS ; 
 scalar_t__ GXEMUL_ETHER_DEV_STATUS_RX_MORE ; 
 scalar_t__ GXEMUL_ETHER_DEV_STATUS_RX_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gx_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct gx_softc*) ; 
 int /*<<< orphan*/  IFCOUNTER_IERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_IPACKETS ; 
 int /*<<< orphan*/  IFCOUNTER_IQDROPS ; 
 scalar_t__ MCLBYTES ; 
 int /*<<< orphan*/  MT_DATA ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  M_PKTHDR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 struct mbuf* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,void const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,struct mbuf*) ; 

__attribute__((used)) static void
FUNC10(void *arg)
{
	struct gx_softc *sc = arg;

	FUNC3(sc);
	for (;;) {
		uint64_t status, length;
		struct mbuf *m;

		/*
		 * XXX
		 * Limit number of packets received at once?
		 */
		status = FUNC1(GXEMUL_ETHER_DEV_STATUS);
		if (status == GXEMUL_ETHER_DEV_STATUS_RX_MORE) {
			FUNC2(GXEMUL_ETHER_DEV_COMMAND, GXEMUL_ETHER_DEV_COMMAND_RX);
			continue;
		}
		if (status != GXEMUL_ETHER_DEV_STATUS_RX_OK)
			break;
		length = FUNC1(GXEMUL_ETHER_DEV_LENGTH);
		if (length > MCLBYTES - ETHER_ALIGN) {
			FUNC6(sc->sc_ifp, IFCOUNTER_IERRORS, 1);
			continue;
		}

		m = FUNC7(M_NOWAIT, MT_DATA, M_PKTHDR);
		if (m == NULL) {
			FUNC5(sc->sc_dev, "no memory for receive mbuf.\n");
			FUNC6(sc->sc_ifp, IFCOUNTER_IQDROPS, 1);
			FUNC4(sc);
			return;
		}

		/* Align incoming frame so IP headers are aligned.  */
		m->m_data += ETHER_ALIGN;

		FUNC8(m->m_data, (const void *)(uintptr_t)FUNC0(GXEMUL_ETHER_DEV_BUFFER), length);

		m->m_pkthdr.rcvif = sc->sc_ifp;
		m->m_pkthdr.len = m->m_len = length;

		FUNC6(sc->sc_ifp, IFCOUNTER_IPACKETS, 1);

		FUNC4(sc);

		(*sc->sc_ifp->if_input)(sc->sc_ifp, m);

		FUNC3(sc);
	}
	FUNC4(sc);
}
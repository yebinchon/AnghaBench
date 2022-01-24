#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mbuf {scalar_t__ m_len; int /*<<< orphan*/ * m_data; } ;
typedef  int /*<<< orphan*/  node_p ;
typedef  int /*<<< orphan*/  hook_p ;
typedef  TYPE_1__* bt3c_softc_p ;
struct TYPE_5__ {int flags; int /*<<< orphan*/  stat; int /*<<< orphan*/  dev; int /*<<< orphan*/  outq; } ;

/* Variables and functions */
 int BT3C_FIFO_SIZE ; 
 int BT3C_XMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC9 (struct mbuf*) ; 
 int FUNC10 (int,scalar_t__) ; 

__attribute__((used)) static void
FUNC11(node_p node, hook_p hook, void *arg, int completed)
{
	bt3c_softc_p	 sc = (bt3c_softc_p) FUNC5(node);
	struct mbuf	*m = NULL;
	int		 i, wrote, len;

	if (sc == NULL)
		return;

	if (completed)
		sc->flags &= ~BT3C_XMIT;

	if (sc->flags & BT3C_XMIT)
		return;

	FUNC6(sc, 0x7080);

	for (wrote = 0; wrote < BT3C_FIFO_SIZE; ) {
		FUNC0(&sc->outq, m);
		if (m == NULL)
			break;

		while (m != NULL) {
			len = FUNC10((BT3C_FIFO_SIZE - wrote), m->m_len);

			for (i = 0; i < len; i++)
				FUNC8(sc, m->m_data[i]);

			wrote += len;
			m->m_data += len;
			m->m_len -= len;

			if (m->m_len > 0)
				break;

			m = FUNC9(m);
		}

		if (m != NULL) {
			FUNC1(&sc->outq, m);
			break;
		}

		FUNC4(sc->stat);
	}

	if (wrote > 0) {
		FUNC2(sc->dev, "Wrote %d bytes\n", wrote);
		FUNC3(sc->stat, wrote);

		FUNC7(sc, 0x7005, wrote);
		sc->flags |= BT3C_XMIT;
	}
}
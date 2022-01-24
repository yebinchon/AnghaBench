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
struct rum_softc {size_t cmdq_first; struct rum_cmdq* cmdq; } ;
struct rum_cmdq {int /*<<< orphan*/  rvp_id; int /*<<< orphan*/  data; int /*<<< orphan*/  (* func ) (struct rum_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rum_softc*) ; 
 int RUM_CMDQ_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct rum_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct rum_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct rum_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct rum_cmdq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rum_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(void *arg, int pending)
{
	struct rum_softc *sc = arg;
	struct rum_cmdq *rc;

	FUNC0(sc);
	while (sc->cmdq[sc->cmdq_first].func != NULL) {
		rc = &sc->cmdq[sc->cmdq_first];
		FUNC1(sc);

		FUNC2(sc);
		rc->func(sc, &rc->data, rc->rvp_id);
		FUNC3(sc);

		FUNC0(sc);
		FUNC4(rc, 0, sizeof (*rc));
		sc->cmdq_first = (sc->cmdq_first + 1) % RUM_CMDQ_SIZE;
	}
	FUNC1(sc);
}
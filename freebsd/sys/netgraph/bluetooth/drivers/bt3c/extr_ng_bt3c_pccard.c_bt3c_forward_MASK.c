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
struct mbuf {int dummy; } ;
typedef  int /*<<< orphan*/  node_p ;
typedef  int /*<<< orphan*/  hook_p ;
typedef  TYPE_1__* bt3c_softc_p ;
struct TYPE_2__ {int /*<<< orphan*/  inq; int /*<<< orphan*/  stat; int /*<<< orphan*/ * hook; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct mbuf*) ; 

__attribute__((used)) static void
FUNC9(node_p node, hook_p hook, void *arg1, int arg2)
{
	bt3c_softc_p	 sc = (bt3c_softc_p) FUNC6(node);
	struct mbuf	*m = NULL;
	int		 error;

	if (sc == NULL)
		return;

	if (sc->hook != NULL && FUNC5(sc->hook)) {
		for (;;) {
			FUNC0(&sc->inq, m);
			if (m == NULL)
				break;

			FUNC7(error, sc->hook, m);
			if (error != 0)
				FUNC3(sc->stat);
		}
	} else {
		FUNC1(&sc->inq);
		for (;;) {
			FUNC8(&sc->inq, m);
			if (m == NULL)
				break;

			FUNC3(sc->stat);
			FUNC4(m);
		}
		FUNC2(&sc->inq);
	}
}
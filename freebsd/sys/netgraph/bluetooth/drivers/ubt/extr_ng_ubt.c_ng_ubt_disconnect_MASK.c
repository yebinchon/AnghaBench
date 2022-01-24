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
struct ubt_softc {int /*<<< orphan*/  sc_scoq; int /*<<< orphan*/  sc_aclq; int /*<<< orphan*/  sc_cmdq; int /*<<< orphan*/ * sc_hook; } ;
typedef  int /*<<< orphan*/ * hook_p ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct ubt_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UBT_FLAG_T_STOP_ALL ; 
 int /*<<< orphan*/  FUNC3 (struct ubt_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ubt_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ubt_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(hook_p hook)
{
	struct ubt_softc	*sc = FUNC2(FUNC1(hook));

	FUNC3(sc);

	if (hook != sc->sc_hook) {
		FUNC4(sc);

		return (EINVAL);
	}

	sc->sc_hook = NULL;

	/* Kick off task to stop all USB xfers */
	FUNC5(sc, UBT_FLAG_T_STOP_ALL);

	/* Drain queues */
	FUNC0(&sc->sc_cmdq);
	FUNC0(&sc->sc_aclq);
	FUNC0(&sc->sc_scoq);

	FUNC4(sc);

	return (0);
}
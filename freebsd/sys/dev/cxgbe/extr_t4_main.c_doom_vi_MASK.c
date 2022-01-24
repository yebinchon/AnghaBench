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
struct vi_info {int dummy; } ;
struct adapter {char* last_op; scalar_t__ last_op_flags; int /*<<< orphan*/  last_op_thr; int /*<<< orphan*/  sc_lock; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*) ; 
 scalar_t__ FUNC2 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct vi_info*) ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(struct adapter *sc, struct vi_info *vi)
{

	FUNC0(sc);
	FUNC4(vi);
	FUNC6(&sc->flags);
	while (FUNC2(sc))
		FUNC5(&sc->flags, &sc->sc_lock, 0, "t4detach", 0);
	FUNC3(sc);
#ifdef INVARIANTS
	sc->last_op = "t4detach";
	sc->last_op_thr = curthread;
	sc->last_op_flags = 0;
#endif
	FUNC1(sc);
}
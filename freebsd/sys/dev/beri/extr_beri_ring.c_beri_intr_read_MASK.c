#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  si_note; } ;
struct beri_softc {int /*<<< orphan*/  beri_mtx; TYPE_3__ beri_rsel; } ;
struct TYPE_5__ {int cdes; } ;
typedef  TYPE_1__ control_reg_t ;

/* Variables and functions */
 int CDES_INT_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ PZERO ; 
 TYPE_1__ FUNC1 (struct beri_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct beri_softc*,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC6(void *arg)
{
	struct beri_softc *sc;
	control_reg_t c;

	sc = arg;

	c = FUNC1(sc, 0);
	if (c.cdes & CDES_INT_EN) {
		c.cdes &= ~(CDES_INT_EN);
		FUNC5(sc, 0, &c);
	}

	FUNC2(&sc->beri_mtx);
	FUNC4(&sc->beri_rsel, PZERO + 1);
	FUNC0(&sc->beri_rsel.si_note, 0);
	FUNC3(&sc->beri_mtx);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ unit; scalar_t__ switch_in_progress; TYPE_2__* cur_scp; int /*<<< orphan*/  new_scp; } ;
typedef  TYPE_1__ sc_softc_t ;
struct TYPE_7__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ sc_console_unit ; 
 int /*<<< orphan*/  sc_consptr ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(sc_softc_t *sc, int s)
{
    FUNC6(sc->new_scp);

    FUNC5(s);
    FUNC2(sc);
    s = FUNC4();
    /* sc->cur_scp == sc->new_scp */
    FUNC7(FUNC0(sc,sc->cur_scp->index));

    /* wait for the controlling process to acknowledge, if necessary */
    if (!FUNC3(sc->cur_scp)) {
	sc->switch_in_progress = 0;
	if (sc->unit == sc_console_unit)
	    FUNC1(sc_consptr,  TRUE);
    }

    return s;
}
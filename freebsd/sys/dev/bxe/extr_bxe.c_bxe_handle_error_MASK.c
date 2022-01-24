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
struct TYPE_2__ {scalar_t__ link_up; } ;
struct bxe_softc {scalar_t__ recovery_state; scalar_t__ state; scalar_t__ error_status; int /*<<< orphan*/  unit; int /*<<< orphan*/  ifp; TYPE_1__ link_vars; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ BXE_RECOVERY_INIT ; 
 scalar_t__ BXE_RECOVERY_WAIT ; 
 scalar_t__ BXE_STATE_OPEN ; 
 int /*<<< orphan*/  LINK_STATE_DOWN ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(struct bxe_softc * sc)
{

    if(sc->recovery_state == BXE_RECOVERY_WAIT) {
        return;
    }
    if(sc->error_status) {
        if (sc->state == BXE_STATE_OPEN)  {
            FUNC1(sc);
        }
        if (sc->link_vars.link_up) {
            FUNC3(sc->ifp, LINK_STATE_DOWN);
        }
        sc->recovery_state = BXE_RECOVERY_INIT;
        FUNC0(sc, "bxe%d: Recovery started errors 0x%x recovery state 0x%x\n",
            sc->unit, sc->error_status, sc->recovery_state);
        FUNC2(sc);
   }
}
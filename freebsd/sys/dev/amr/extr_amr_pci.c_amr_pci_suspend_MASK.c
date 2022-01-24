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
struct amr_softc {int /*<<< orphan*/  amr_dev; int /*<<< orphan*/  amr_state; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AMR_STATE_SUSPEND ; 
 scalar_t__ FUNC0 (struct amr_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct amr_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
    struct amr_softc	*sc = FUNC2(dev);

    FUNC1(1);

    sc->amr_state |= AMR_STATE_SUSPEND;

    /* flush controller */
    FUNC3(sc->amr_dev, "flushing cache...");
    FUNC4("%s\n", FUNC0(sc) ? "failed" : "done");
    
    /* XXX disable interrupts? */

    return(0);
}
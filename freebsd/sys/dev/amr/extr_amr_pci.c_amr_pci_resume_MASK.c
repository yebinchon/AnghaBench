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
struct amr_softc {int /*<<< orphan*/  amr_state; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AMR_STATE_SUSPEND ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct amr_softc* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(device_t dev)
{
    struct amr_softc	*sc = FUNC1(dev);

    FUNC0(1);

    sc->amr_state &= ~AMR_STATE_SUSPEND;

    /* XXX enable interrupts? */

    return(0);
}
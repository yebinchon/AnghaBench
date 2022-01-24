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
struct amr_softc {TYPE_1__* amr_drive; int /*<<< orphan*/  amr_dev; int /*<<< orphan*/  amr_state; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {scalar_t__ al_disk; } ;

/* Variables and functions */
 int AMR_MAXLD ; 
 int /*<<< orphan*/  AMR_STATE_SHUTDOWN ; 
 scalar_t__ FUNC0 (struct amr_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct amr_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
    struct amr_softc	*sc = FUNC3(dev);
    int			i,error;

    FUNC1(1);

    /* mark ourselves as in-shutdown */
    sc->amr_state |= AMR_STATE_SHUTDOWN;


    /* flush controller */
    FUNC4(sc->amr_dev, "flushing cache...");
    FUNC5("%s\n", FUNC0(sc) ? "failed" : "done");

    error = 0;

    /* delete all our child devices */
    for(i = 0 ; i < AMR_MAXLD; i++) {
	if( sc->amr_drive[i].al_disk != 0) {
	    if((error = FUNC2(sc->amr_dev,sc->amr_drive[i].al_disk)) != 0)
		goto shutdown_out;
	    sc->amr_drive[i].al_disk = 0;
	}
    }

    /* XXX disable interrupts? */

shutdown_out:
    return(error);
}
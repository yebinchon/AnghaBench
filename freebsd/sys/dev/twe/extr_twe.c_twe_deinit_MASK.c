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
struct twe_softc {int /*<<< orphan*/  twe_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct twe_softc*) ; 
 int /*<<< orphan*/  TWE_SHUTDOWN_MESSAGE_CREDITS ; 
 int /*<<< orphan*/  TWE_STATE_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC1 (struct twe_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct twe_softc*,int /*<<< orphan*/ ) ; 

void
FUNC3(struct twe_softc *sc)
{
    /*
     * Mark the controller as shutting down, and disable any further interrupts.
     */
    FUNC0(sc);
    sc->twe_state |= TWE_STATE_SHUTDOWN;
    FUNC1(sc);

#ifdef TWE_SHUTDOWN_NOTIFICATION
    /*
     * Disconnect from the controller
     */
    twe_init_connection(sc, TWE_SHUTDOWN_MESSAGE_CREDITS);
#endif
}
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
struct mpt_softc {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct mpt_softc*) ; 
 scalar_t__ MPT_OK ; 
 int /*<<< orphan*/  FUNC1 (struct mpt_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct mpt_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct mpt_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct mpt_softc*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct mpt_softc*,int) ; 
 scalar_t__ FUNC6 (struct mpt_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct mpt_softc *mpt)
{

	/*
	 * We enter with the IOC enabled, but async events
	 * not enabled, ports not enabled and interrupts
	 * not enabled.
	 */
	FUNC0(mpt);

	/*
	 * Enable asynchronous event reporting- all personalities
	 * have attached so that they should be able to now field
	 * async events.
	 */
	FUNC5(mpt, 1);

	/*
	 * Catch any pending interrupts
	 *
	 * This seems to be crucial- otherwise
	 * the portenable below times out.
	 */
	FUNC3(mpt);

	/*
	 * Enable Interrupts
	 */
	FUNC2(mpt);

	/*
	 * Catch any pending interrupts
	 *
	 * This seems to be crucial- otherwise
	 * the portenable below times out.
	 */
	FUNC3(mpt);

	/*
	 * Enable the port.
	 */
	if (FUNC6(mpt, 0) != MPT_OK) {
		FUNC4(mpt, "failed to enable port 0\n");
		FUNC1(mpt);
		return (ENXIO);
	}
	FUNC1(mpt);
	return (0);
}
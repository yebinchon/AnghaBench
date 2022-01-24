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
struct octeon_wdog_core_softc {scalar_t__ csc_core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FILTER_HANDLED ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(void *arg)
{
	struct octeon_wdog_core_softc *csc = arg;

	FUNC1(csc->csc_core == FUNC2(),
	    ("got watchdog interrupt for core %u on core %u.",
	     csc->csc_core, FUNC2()));

	(void)csc;

	/* Poke it! */
	FUNC3(FUNC0(FUNC2()), 1);

	return (FILTER_HANDLED);
}
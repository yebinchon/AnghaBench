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
struct ahc_softc {int /*<<< orphan*/  pause; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCNTRL ; 
 scalar_t__ FUNC0 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ahc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ahc_softc*) ; 

__attribute__((used)) static __inline void
FUNC3(struct ahc_softc *ahc)
{
	FUNC1(ahc, HCNTRL, ahc->pause);

	/*
	 * Since the sequencer can disable pausing in a critical section, we
	 * must loop until it actually stops.
	 */
	while (FUNC0(ahc) == 0)
		;

	FUNC2(ahc);
}
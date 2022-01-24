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
struct ncr53c9x_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ncr53c9x_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ncr53c9x_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ncr53c9x_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ncr53c9x_softc*) ; 

void
FUNC4(void *arg)
{
	struct ncr53c9x_softc *sc = arg;

	if (!FUNC0(sc))
		return;

	FUNC1(sc);

	FUNC3(sc);

	FUNC2(sc);
}
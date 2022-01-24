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
typedef  int /*<<< orphan*/  uint8_t ;
struct ps2mouse_softc {int /*<<< orphan*/  mtx; } ;

/* Variables and functions */
 int FUNC0 (struct ps2mouse_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int
FUNC3(struct ps2mouse_softc *sc, uint8_t *val)
{
	int retval;

	FUNC1(&sc->mtx);
	retval = FUNC0(sc, val);
	FUNC2(&sc->mtx);

	return (retval);
}
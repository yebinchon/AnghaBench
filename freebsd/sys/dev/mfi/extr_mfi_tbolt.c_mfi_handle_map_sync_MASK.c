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
struct mfi_softc {int /*<<< orphan*/  mfi_io_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mfi_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(void *context, int pending)
{
	struct mfi_softc *sc;

	sc = context;
	FUNC1(&sc->mfi_io_lock);
	FUNC0(sc);
	FUNC2(&sc->mfi_io_lock);
}
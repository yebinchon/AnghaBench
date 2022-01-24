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
struct vtblk_softc {int /*<<< orphan*/  vtblk_flags; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  VTBLK_FLAG_SUSPEND ; 
 int /*<<< orphan*/  FUNC0 (struct vtblk_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct vtblk_softc*) ; 
 struct vtblk_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vtblk_softc*) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct vtblk_softc *sc;

	sc = FUNC2(dev);

	FUNC0(sc);
	/* XXX BMV: virtio_reinit(), etc needed here? */
	sc->vtblk_flags &= ~VTBLK_FLAG_SUSPEND;
	FUNC3(sc);
	FUNC1(sc);

	return (0);
}
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
struct terasic_mtl_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct terasic_mtl_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct terasic_mtl_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct terasic_mtl_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct terasic_mtl_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct terasic_mtl_softc*) ; 

void
FUNC5(struct terasic_mtl_softc *sc)
{

	/* XXXRW: syscons and vt can't detach, but try anyway, only to panic. */
#if defined(DEV_SC)
	terasic_mtl_syscons_detach(sc);
#endif
#if defined(DEV_VT)
	terasic_mtl_fbd_detach(sc);
#endif

	/* All other aspects of the driver can detach just fine. */
	FUNC4(sc);
	FUNC1(sc);
	FUNC2(sc);
}
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
struct vxlan_softc {int /*<<< orphan*/  vxl_callout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vxlan_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC2 (struct vxlan_softc*) ; 
 int vxlan_ftable_prune_period ; 

__attribute__((used)) static void
FUNC3(void *xsc)
{
	struct vxlan_softc *sc;

	sc = xsc;
	FUNC0(sc);

	FUNC2(sc);
	FUNC1(&sc->vxl_callout, vxlan_ftable_prune_period * hz);
}
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
struct vxlan_softc {int vxl_flags; int /*<<< orphan*/  vxl_lock; } ;

/* Variables and functions */
 int VXLAN_FLAG_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct vxlan_softc*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC1 (struct vxlan_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct vxlan_softc *sc)
{

	FUNC0(sc);
	while (sc->vxl_flags & VXLAN_FLAG_INIT)
		FUNC1(sc, &sc->vxl_lock, 0, "vxlint", hz);
}
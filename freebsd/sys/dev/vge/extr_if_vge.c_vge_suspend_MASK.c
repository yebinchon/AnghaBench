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
struct vge_softc {int /*<<< orphan*/  vge_flags; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  VGE_FLAG_SUSPENDED ; 
 int /*<<< orphan*/  FUNC0 (struct vge_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct vge_softc*) ; 
 struct vge_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vge_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct vge_softc*) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct vge_softc *sc;

	sc = FUNC2(dev);

	FUNC0(sc);
	FUNC4(sc);
	FUNC3(sc);
	sc->vge_flags |= VGE_FLAG_SUSPENDED;
	FUNC1(sc);

	return (0);
}
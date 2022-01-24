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
typedef  int uint32_t ;
typedef  int u_int ;
struct vmd_softc {int /*<<< orphan*/  vmd_bhandle; int /*<<< orphan*/  vmd_btag; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int bus_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct vmd_softc* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t
FUNC5(device_t dev, u_int b, u_int s, u_int f, u_int reg, int width)
{

	struct vmd_softc *sc;
	bus_addr_t offset;

	offset = (b << 20) + (s << 15) + (f << 12) + reg;
	sc = FUNC4(dev);
	switch(width) {
	case 4:
		return (FUNC3(sc->vmd_btag, sc->vmd_bhandle,
		    offset));
	case 2:
		return (FUNC2(sc->vmd_btag, sc->vmd_bhandle,
		    offset));
	case 1:
		return (FUNC1(sc->vmd_btag, sc->vmd_bhandle,
		    offset));
	default:
		FUNC0(1, ("Invalid width requested"));
		return (0xffffffff);
	}
}
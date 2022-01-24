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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int u_int ;
struct vmd_softc {int /*<<< orphan*/  vmd_bhandle; int /*<<< orphan*/  vmd_btag; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int bus_addr_t ;

/* Variables and functions */
 void FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 void FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 void FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct vmd_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(device_t dev, u_int b, u_int s, u_int f, u_int reg,
    uint32_t val, int width)
{

	struct vmd_softc *sc;
	bus_addr_t offset;

	offset = (b << 20) + (s << 15) + (f << 12) + reg;
	sc = FUNC3(dev);

	switch(width) {
	case 4:
		return (FUNC2(sc->vmd_btag, sc->vmd_bhandle,
		    offset, val));
	case 2:
		return (FUNC1(sc->vmd_btag, sc->vmd_bhandle,
		    offset, val));
	case 1:
		return (FUNC0(sc->vmd_btag, sc->vmd_bhandle,
		    offset, val));
	default:
		FUNC4("Failed to specific width");
	}
}
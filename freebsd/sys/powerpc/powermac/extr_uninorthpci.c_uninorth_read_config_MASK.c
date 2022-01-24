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
typedef  scalar_t__ vm_offset_t ;
typedef  int u_int32_t ;
typedef  int u_int ;
struct uninorth_softc {int /*<<< orphan*/  sc_cfg_mtx; scalar_t__ sc_data; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct uninorth_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct uninorth_softc*,int,int,int,int) ; 

__attribute__((used)) static u_int32_t
FUNC7(device_t dev, u_int bus, u_int slot, u_int func, u_int reg,
    int width)
{
	struct		uninorth_softc *sc;
	vm_offset_t	caoff;
	u_int32_t	val;

	sc = FUNC0(dev);
	caoff = sc->sc_data + (reg & 0x07);
	val = 0xffffffff;

	FUNC4(&sc->sc_cfg_mtx);
	if (FUNC6(sc, bus, slot, func, reg) != 0) {
		switch (width) {
		case 1: 
			val = FUNC3(caoff);
			break;
		case 2:
			val = FUNC1(caoff);
			break;
		case 4:
			val = FUNC2(caoff);
			break;
		}
	}
	FUNC5(&sc->sc_cfg_mtx);

	return (val);
}
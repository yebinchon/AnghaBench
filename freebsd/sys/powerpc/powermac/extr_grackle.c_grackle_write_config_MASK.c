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
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  int u_int ;
struct grackle_softc {scalar_t__ sc_data; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct grackle_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct grackle_softc*) ; 
 scalar_t__ FUNC2 (struct grackle_softc*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(device_t dev, u_int bus, u_int slot, u_int func,
    u_int reg, u_int32_t val, int width)
{
	struct		grackle_softc *sc;
	vm_offset_t	caoff;

	sc = FUNC0(dev);
	caoff = sc->sc_data + (reg & 0x03);

	if (FUNC2(sc, bus, slot, func, reg)) {
		switch (width) {
		case 1:
			FUNC8(caoff, val);
			(void)FUNC5(caoff);
			break;
		case 2:
			FUNC6(caoff, val);
			(void)FUNC3(caoff);
			break;
		case 4:
			FUNC7(caoff, val);
			(void)FUNC4(caoff);
			break;
		}
	}
	FUNC1(sc);
}
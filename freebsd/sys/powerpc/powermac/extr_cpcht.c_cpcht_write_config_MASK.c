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
struct cpcht_softc {int sc_populated_slots; scalar_t__ sc_data; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct cpcht_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(device_t dev, u_int bus, u_int slot, u_int func,
    u_int reg, u_int32_t val, int width)
{
	struct		cpcht_softc *sc;
	vm_offset_t	caoff;

	sc = FUNC0(dev);
	caoff = sc->sc_data + 
		(((((slot & 0x1f) << 3) | (func & 0x07)) << 8) | reg);

	if (bus == 0 && (!(sc->sc_populated_slots & (1 << slot)) || func > 0))
		return;

	if (bus > 0)
		caoff += 0x01000000UL + (bus << 16);

	switch (width) {
	case 1:
		FUNC3(caoff, val);
		break;
	case 2:
		FUNC1(caoff, val);
		break;
	case 4:
		FUNC2(caoff, val);
		break;
	}
}
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
struct grackle_softc {scalar_t__ sc_data; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*,int) ; 
 struct grackle_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct grackle_softc*) ; 
 scalar_t__ FUNC3 (struct grackle_softc*,int,int,int,int) ; 
 int FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 int FUNC6 (scalar_t__) ; 

__attribute__((used)) static u_int32_t
FUNC7(device_t dev, u_int bus, u_int slot, u_int func, u_int reg,
    int width)
{
	struct		grackle_softc *sc;
	vm_offset_t	caoff;
	u_int32_t	retval = 0xffffffff;

	sc = FUNC1(dev);
	caoff = sc->sc_data + (reg & 0x03);

	if (FUNC3(sc, bus, slot, func, reg) != 0) {

		/*
		 * Config probes to non-existent devices on the
		 * secondary bus generates machine checks. Be sure
		 * to catch these.
		 */
		if (bus > 0) {
		  if (FUNC0((void *)sc->sc_data, 4)) {
			  return (retval);
		  }
		}

		switch (width) {
		case 1:
			retval = (FUNC6(caoff));
			break;
		case 2:
			retval = (FUNC4(caoff));
			break;
		case 4:
			retval = (FUNC5(caoff));
			break;
		}
	}
	FUNC2(sc);

	return (retval);
}
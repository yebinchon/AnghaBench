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
typedef  int u_int ;
struct cfi_softc {int sc_width; int /*<<< orphan*/  sc_handle; int /*<<< orphan*/  sc_tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5(struct cfi_softc *sc, u_int ofs, u_int val)
{

	ofs &= ~(sc->sc_width - 1);
	switch (sc->sc_width) {
	case 1:
		FUNC0(sc->sc_tag, sc->sc_handle, ofs, val);
		break;
	case 2:
#ifdef CFI_HARDWAREBYTESWAP
		bus_space_write_2(sc->sc_tag, sc->sc_handle, ofs, val);
#else
		FUNC1(sc->sc_tag, sc->sc_handle, ofs, FUNC3(val));

#endif
		break;
	case 4:
#ifdef CFI_HARDWAREBYTESWAP
		bus_space_write_4(sc->sc_tag, sc->sc_handle, ofs, val);
#else
		FUNC2(sc->sc_tag, sc->sc_handle, ofs, FUNC4(val));
#endif
		break;
	}
}
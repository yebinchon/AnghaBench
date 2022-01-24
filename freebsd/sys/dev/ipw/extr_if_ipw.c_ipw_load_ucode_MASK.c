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
struct ipw_softc {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ipw_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EIO ; 
 int /*<<< orphan*/  IPW_CSR_RST ; 
 int FUNC2 (struct ipw_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ipw_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ipw_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ipw_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ipw_softc*,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC8(struct ipw_softc *sc, const char *uc, int size)
{
	int ntries;

	FUNC5(sc, 0x3000e0, 0x80000000);
	FUNC0(sc, IPW_CSR_RST, 0);

	FUNC4(sc, 0x220000, 0x0703);
	FUNC4(sc, 0x220000, 0x0707);

	FUNC3(sc, 0x210014, 0x72);
	FUNC3(sc, 0x210014, 0x72);

	FUNC3(sc, 0x210000, 0x40);
	FUNC3(sc, 0x210000, 0x00);
	FUNC3(sc, 0x210000, 0x40);

	FUNC6(sc, 0x210010, uc, size);

	FUNC3(sc, 0x210000, 0x00);
	FUNC3(sc, 0x210000, 0x00);
	FUNC3(sc, 0x210000, 0x80);

	FUNC4(sc, 0x220000, 0x0703);
	FUNC4(sc, 0x220000, 0x0707);

	FUNC3(sc, 0x210014, 0x72);
	FUNC3(sc, 0x210014, 0x72);

	FUNC3(sc, 0x210000, 0x00);
	FUNC3(sc, 0x210000, 0x80);

	for (ntries = 0; ntries < 10; ntries++) {
		if (FUNC2(sc, 0x210000) & 1)
			break;
		FUNC1(10);
	}
	if (ntries == 10) {
		FUNC7(sc->sc_dev,
		    "timeout waiting for ucode to initialize\n");
		return EIO;
	}

	FUNC5(sc, 0x3000e0, 0);

	return 0;
}
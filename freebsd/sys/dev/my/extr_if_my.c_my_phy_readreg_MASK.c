#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int16_t ;
struct my_softc {TYPE_1__* my_info; } ;
struct TYPE_2__ {scalar_t__ my_did; } ;

/* Variables and functions */
 int FUNC0 (struct my_softc*,scalar_t__) ; 
 long FUNC1 (struct my_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct my_softc*,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ MTD803ID ; 
 int /*<<< orphan*/  FUNC4 (struct my_softc*) ; 
 int /*<<< orphan*/  MY_MANAGEMENT ; 
 long MY_MASK_MIIR_MII_MDC ; 
 long MY_MASK_MIIR_MII_MDI ; 
 int /*<<< orphan*/  MY_OP_READ ; 
 scalar_t__ MY_PHYBASE ; 
 long FUNC5 (struct my_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u_int16_t
FUNC6(struct my_softc * sc, int reg)
{
	long            miir;
	int             mask, data;

	FUNC4(sc);

	if (sc->my_info->my_did == MTD803ID)
		data = FUNC0(sc, MY_PHYBASE + reg * 2);
	else {
		miir = FUNC5(sc, MY_OP_READ, reg);

		/* read data */
		mask = 0x8000;
		data = 0;
		while (mask) {
			/* low MDC */
			miir &= ~MY_MASK_MIIR_MII_MDC;
			FUNC2(sc, MY_MANAGEMENT, miir);

			/* read MDI */
			miir = FUNC1(sc, MY_MANAGEMENT);
			if (miir & MY_MASK_MIIR_MII_MDI)
				data |= mask;

			/* high MDC, and wait */
			miir |= MY_MASK_MIIR_MII_MDC;
			FUNC2(sc, MY_MANAGEMENT, miir);
			FUNC3(30);

			/* next */
			mask >>= 1;
		}

		/* low MDC */
		miir &= ~MY_MASK_MIIR_MII_MDC;
		FUNC2(sc, MY_MANAGEMENT, miir);
	}

	return (u_int16_t) data;
}
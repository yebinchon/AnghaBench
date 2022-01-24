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
struct my_softc {TYPE_1__* my_info; } ;
struct TYPE_2__ {scalar_t__ my_did; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct my_softc*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct my_softc*,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ MTD803ID ; 
 int /*<<< orphan*/  FUNC3 (struct my_softc*) ; 
 int /*<<< orphan*/  MY_MANAGEMENT ; 
 long MY_MASK_MIIR_MII_MDC ; 
 long MY_MASK_MIIR_MII_MDO ; 
 int /*<<< orphan*/  MY_OP_WRITE ; 
 scalar_t__ MY_PHYBASE ; 
 long FUNC4 (struct my_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(struct my_softc * sc, int reg, int data)
{
	long            miir;
	int             mask;

	FUNC3(sc);

	if (sc->my_info->my_did == MTD803ID)
		FUNC0(sc, MY_PHYBASE + reg * 2, data);
	else {
		miir = FUNC4(sc, MY_OP_WRITE, reg);

		/* write data */
		mask = 0x8000;
		while (mask) {
			/* low MDC, prepare MDO */
			miir &= ~(MY_MASK_MIIR_MII_MDC + MY_MASK_MIIR_MII_MDO);
			if (mask & data)
				miir |= MY_MASK_MIIR_MII_MDO;
			FUNC1(sc, MY_MANAGEMENT, miir);
			FUNC2(1);

			/* high MDC */
			miir |= MY_MASK_MIIR_MII_MDC;
			FUNC1(sc, MY_MANAGEMENT, miir);
			FUNC2(1);

			/* next */
			mask >>= 1;
		}

		/* low MDC */
		miir &= ~MY_MASK_MIIR_MII_MDC;
		FUNC1(sc, MY_MANAGEMENT, miir);
	}
	return;
}
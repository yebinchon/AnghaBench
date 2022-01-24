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
struct xae_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MDIO_CTRL_READY ; 
 int FUNC1 (struct xae_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XAE_MDIO_CTRL ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int
FUNC3(struct xae_softc *sc)
{
	uint32_t reg;
	int timeout;

	timeout = 200;

	do {
		reg = FUNC1(sc, XAE_MDIO_CTRL);
		if (reg & MDIO_CTRL_READY)
			break;
		FUNC0(1);
	} while (timeout--);

	if (timeout <= 0) {
		FUNC2("Failed to get MDIO ready\n");
		return (1);
	}

	return (0);
}
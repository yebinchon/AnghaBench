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
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  ig4iic_softc_t ;

/* Variables and functions */
 int /*<<< orphan*/  IG4_REG_CLR_INTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC2(ig4iic_softc_t *sc, uint16_t slave, bool repeated_start)
{
	FUNC1(sc, slave >> 1);

	if (!repeated_start) {
		/*
		 * Clear any previous TX/RX FIFOs overflow/underflow bits
		 * and I2C bus STOP condition.
		 */
		FUNC0(sc, IG4_REG_CLR_INTR);
	}

	return (0);
}
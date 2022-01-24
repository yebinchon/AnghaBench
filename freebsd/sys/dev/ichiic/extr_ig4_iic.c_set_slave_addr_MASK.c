#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_7__ {int slave_valid; scalar_t__ last_slave; int use_10bit; } ;
typedef  TYPE_1__ ig4iic_softc_t ;

/* Variables and functions */
 scalar_t__ IG4_CTL_10BIT ; 
 scalar_t__ IG4_CTL_RESTARTEN ; 
 int /*<<< orphan*/  IG4_I2C_ENABLE ; 
 int /*<<< orphan*/  IG4_INTR_TX_EMPTY ; 
 int /*<<< orphan*/  IG4_REG_CTL ; 
 int /*<<< orphan*/  IG4_REG_TAR_ADD ; 
 scalar_t__ IG4_TAR_10BIT ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(ig4iic_softc_t *sc, uint8_t slave)
{
	uint32_t tar;
	uint32_t ctl;
	int use_10bit;

	use_10bit = 0;
	if (sc->slave_valid && sc->last_slave == slave &&
	    sc->use_10bit == use_10bit) {
		return;
	}
	sc->use_10bit = use_10bit;

	/*
	 * Wait for TXFIFO to drain before disabling the controller.
	 */
	FUNC3(sc, IG4_INTR_TX_EMPTY);

	FUNC2(sc, 0);
	ctl = FUNC0(sc, IG4_REG_CTL);
	ctl &= ~IG4_CTL_10BIT;
	ctl |= IG4_CTL_RESTARTEN;

	tar = slave;
	if (sc->use_10bit) {
		tar |= IG4_TAR_10BIT;
		ctl |= IG4_CTL_10BIT;
	}
	FUNC1(sc, IG4_REG_CTL, ctl);
	FUNC1(sc, IG4_REG_TAR_ADD, tar);
	FUNC2(sc, IG4_I2C_ENABLE);
	sc->slave_valid = 1;
	sc->last_slave = slave;
}
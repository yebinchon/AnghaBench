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
struct kiic_softc {int sc_regstep; int sc_node; int sc_i2c_base; int sc_irqrid; int /*<<< orphan*/  sc_iicbus; int /*<<< orphan*/  sc_ih; void* sc_irq; int /*<<< orphan*/  sc_mutex; int /*<<< orphan*/ * sc_reg; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  reg ;
typedef  int phandle_t ;
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  I2C_100kHz ; 
 int I2C_INT_ADDR ; 
 int I2C_INT_DATA ; 
 int I2C_INT_STOP ; 
 int /*<<< orphan*/  I2C_STDMODE ; 
 int /*<<< orphan*/  IER ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int /*<<< orphan*/  ISR ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int FUNC0 (int) ; 
 int FUNC1 (int,char*,int*,int) ; 
 scalar_t__ FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  REV ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  STATUS ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 scalar_t__ bootverbose ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct kiic_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct kiic_softc*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 struct kiic_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  kiic_intr ; 
 int FUNC10 (struct kiic_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct kiic_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct kiic_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct kiic_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (char*,char*) ; 

__attribute__((used)) static int
FUNC17(device_t self)
{
	struct kiic_softc *sc = FUNC8(self);
	int rid, rate;
	phandle_t node;
	char name[64];

	FUNC6(sc, sizeof(*sc));
	sc->sc_dev = self;
	
	node = FUNC15(self);
	if (node == 0 || node == -1) {
		return (EINVAL);
	}

	rid = 0;
	sc->sc_reg = FUNC3(self, SYS_RES_MEMORY,
			&rid, RF_ACTIVE);
	if (sc->sc_reg == NULL) {
		return (ENOMEM);
	}

	if (FUNC1(node, "AAPL,i2c-rate", &rate, 4) != 4) {
		FUNC9(self, "cannot get i2c-rate\n");
		return (ENXIO);
	}
	if (FUNC1(node, "AAPL,address-step", &sc->sc_regstep, 4) != 4) {
		FUNC9(self, "unable to find i2c address step\n");
		return (ENXIO);
	}

	/*
	 * Some Keywest I2C devices have their children attached directly
	 * underneath them.  Some have a single 'iicbus' child with the
	 * devices underneath that.  Sort this out, and make sure that the
	 * OFW I2C layer has the correct node.
	 *
	 * Note: the I2C children of the Uninorth bridges have two ports.
	 *  In general, the port is designated in the 9th bit of the I2C
	 *  address. However, for kiic devices with children attached below
	 *  an i2c-bus node, the port is indicated in the 'reg' property
	 *  of the i2c-bus node.
	 */

	sc->sc_node = node;

	node = FUNC0(node);
	if (FUNC2(node, "name", name, sizeof(name)) > 0) {
		if (FUNC16(name,"i2c-bus") == 0) {
			phandle_t reg;
			if (FUNC2(node, "reg", &reg, sizeof(reg)) > 0)
				sc->sc_i2c_base = reg << 8;

			sc->sc_node = node;
		}
	}

	FUNC14(&sc->sc_mutex, "kiic", NULL, MTX_DEF);

	sc->sc_irq = FUNC3(self, SYS_RES_IRQ, &sc->sc_irqrid, 
	    RF_ACTIVE);
	FUNC5(self, sc->sc_irq, INTR_TYPE_MISC | INTR_MPSAFE, NULL,
	    kiic_intr, sc, &sc->sc_ih);

	FUNC13(sc, ISR, FUNC10(sc, ISR));
	FUNC13(sc, STATUS, 0);
	FUNC13(sc, IER, 0);

	FUNC11(sc, I2C_STDMODE);
	FUNC12(sc, I2C_100kHz);		/* XXX rate */
	
	FUNC13(sc, IER, I2C_INT_DATA | I2C_INT_ADDR | I2C_INT_STOP);

	if (bootverbose)
		FUNC9(self, "Revision: %02X\n", FUNC10(sc, REV));

	/* Add the IIC bus layer */
	sc->sc_iicbus = FUNC7(self, "iicbus", -1);

	return (FUNC4(self));
}
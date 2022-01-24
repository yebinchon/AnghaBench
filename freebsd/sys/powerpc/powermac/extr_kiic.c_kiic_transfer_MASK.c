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
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
struct kiic_softc {int sc_flags; int* sc_data; int sc_resid; int sc_i2c_base; int /*<<< orphan*/  sc_mutex; int /*<<< orphan*/  sc_dev; } ;
struct iic_msg {int flags; int len; int* buf; int slave; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  ADDR ; 
 int /*<<< orphan*/  CONTROL ; 
 int EIO ; 
 int ETIMEDOUT ; 
 int EWOULDBLOCK ; 
 int I2C_BUSY ; 
 int /*<<< orphan*/  I2C_COMBMODE ; 
 int I2C_CT_ADDR ; 
 int I2C_ERROR ; 
 int I2C_READING ; 
 int /*<<< orphan*/  I2C_STDMODE ; 
 int /*<<< orphan*/  I2C_STDSUBMODE ; 
 int IIC_M_NOSTOP ; 
 int IIC_M_RD ; 
 int /*<<< orphan*/  ISR ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  STATUS ; 
 int /*<<< orphan*/  SUBADDR ; 
 struct kiic_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct kiic_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kiic_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct kiic_softc*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct kiic_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(device_t dev, struct iic_msg *msgs, uint32_t nmsgs)
{
	struct kiic_softc *sc;
	int i, x, timo, err;
	uint16_t addr;
	uint8_t subaddr;

	sc = FUNC1(dev);
	timo = 100;
	subaddr = 0;

	FUNC7(&sc->sc_mutex);

	if (sc->sc_flags & I2C_BUSY)
		FUNC8(dev, &sc->sc_mutex, 0, "kiic", timo);

	if (sc->sc_flags & I2C_BUSY) {
		FUNC9(&sc->sc_mutex);
		return (ETIMEDOUT);
	}
		
	sc->sc_flags = I2C_BUSY;

	/* Clear pending interrupts, and reset controller */
	FUNC6(sc, ISR, FUNC3(sc, ISR));
	FUNC6(sc, STATUS, 0);

	for (i = 0; i < nmsgs; i++) {
		if (msgs[i].flags & IIC_M_NOSTOP) {
			if (msgs[i+1].flags & IIC_M_RD)
				FUNC4(sc, I2C_COMBMODE);
			else
				FUNC4(sc, I2C_STDSUBMODE);
			FUNC0(msgs[i].len == 1, ("oversize I2C message"));
			subaddr = msgs[i].buf[0];
			i++;
		} else {
			FUNC4(sc, I2C_STDMODE);
		}

		sc->sc_data = msgs[i].buf;
		sc->sc_resid = msgs[i].len;
		sc->sc_flags = I2C_BUSY;
		addr = msgs[i].slave;
		timo = 1000 + sc->sc_resid * 200;
		timo += 100000;

		if (msgs[i].flags & IIC_M_RD) {
			sc->sc_flags |= I2C_READING;
			addr |= 1;
		}

		addr |= sc->sc_i2c_base;

		FUNC5(sc, (addr & 0x100) >> 8);
		FUNC6(sc, ADDR, addr & 0xff);
		FUNC6(sc, SUBADDR, subaddr);

		x = FUNC3(sc, CONTROL) | I2C_CT_ADDR;
		FUNC6(sc, CONTROL, x);

		err = FUNC8(dev, &sc->sc_mutex, 0, "kiic", timo);
		
		msgs[i].len -= sc->sc_resid;

		if ((sc->sc_flags & I2C_ERROR) || err == EWOULDBLOCK) {
			FUNC2(sc->sc_dev, "I2C error\n");
			sc->sc_flags = 0;
			FUNC9(&sc->sc_mutex);
			return (EIO);
		}
	}

	sc->sc_flags = 0;

	FUNC9(&sc->sc_mutex);

	return (0);
}
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
struct twsi_softc {int /*<<< orphan*/  mutex; int /*<<< orphan*/  reg_data; int /*<<< orphan*/  reg_status; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int IIC_ESTATUS ; 
 int IIC_ETIMEOUT ; 
 int IIC_NOERR ; 
 int /*<<< orphan*/  TWSI_CONTROL_ACK ; 
 int /*<<< orphan*/  TWSI_CONTROL_IFLG ; 
 void* FUNC1 (struct twsi_softc*,int /*<<< orphan*/ ) ; 
 int TWSI_STATUS_DATA_RD_ACK ; 
 int TWSI_STATUS_DATA_RD_NOACK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 struct twsi_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct twsi_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct twsi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct twsi_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct twsi_softc*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(device_t dev, char *buf, int len, int *read, int last, int delay)
{
	struct twsi_softc *sc;
	uint32_t status;
	int last_byte, rv;

	sc = FUNC3(dev);

	FUNC4(&sc->mutex);
	*read = 0;
	while (*read < len) {
		/*
		 * Check if we are reading last byte of the last buffer,
		 * do not send ACK then, per I2C specs
		 */
		last_byte = ((*read == len - 1) && last) ? 1 : 0;
		if (last_byte)
			FUNC7(sc, TWSI_CONTROL_ACK);
		else
			FUNC8(sc, TWSI_CONTROL_ACK);

		FUNC6(sc);
		FUNC0(1000);

		if (FUNC9(sc, delay, TWSI_CONTROL_IFLG)) {
			FUNC2(dev, "timeout reading data (delay=%d)\n", delay);
			rv = IIC_ETIMEOUT;
			goto out;
		}

		status = FUNC1(sc, sc->reg_status);
		if (status != (last_byte ?
		    TWSI_STATUS_DATA_RD_NOACK : TWSI_STATUS_DATA_RD_ACK)) {
			FUNC2(dev, "wrong status (%02x) while reading\n", status);
			rv = IIC_ESTATUS;
			goto out;
		}

		*buf++ = FUNC1(sc, sc->reg_data);
		(*read)++;
	}
	rv = IIC_NOERR;
out:
	FUNC5(&sc->mutex);
	return (rv);
}
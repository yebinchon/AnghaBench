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
struct twsi_softc {int /*<<< orphan*/  mutex; int /*<<< orphan*/  reg_status; int /*<<< orphan*/  reg_data; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int IIC_ESTATUS ; 
 int IIC_ETIMEOUT ; 
 int IIC_NOERR ; 
 int /*<<< orphan*/  TWSI_CONTROL_IFLG ; 
 int FUNC1 (struct twsi_softc*,int /*<<< orphan*/ ) ; 
 int TWSI_STATUS_DATA_WR_ACK ; 
 int /*<<< orphan*/  FUNC2 (struct twsi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 struct twsi_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct twsi_softc*) ; 
 scalar_t__ FUNC8 (struct twsi_softc*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(device_t dev, const char *buf, int len, int *sent, int timeout)
{
	struct twsi_softc *sc;
	uint32_t status;
	int rv;

	sc = FUNC4(dev);

	FUNC5(&sc->mutex);
	*sent = 0;
	while (*sent < len) {
		FUNC2(sc, sc->reg_data, *buf++);

		FUNC7(sc);
		FUNC0(1000);
		if (FUNC8(sc, timeout, TWSI_CONTROL_IFLG)) {
			FUNC3(dev, "timeout writing data (timeout=%d)\n", timeout);
			rv = IIC_ETIMEOUT;
			goto out;
		}

		status = FUNC1(sc, sc->reg_status);
		if (status != TWSI_STATUS_DATA_WR_ACK) {
			FUNC3(dev, "wrong status (%02x) while writing\n", status);
			rv = IIC_ESTATUS;
			goto out;
		}
		(*sent)++;
	}
	rv = IIC_NOERR;
out:
	FUNC6(&sc->mutex);
	return (rv);
}
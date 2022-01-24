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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  u_int ;
typedef  size_t u_char ;
struct twsi_softc {int /*<<< orphan*/  mutex; int /*<<< orphan*/  reg_control; int /*<<< orphan*/  reg_baud_rate; int /*<<< orphan*/  reg_soft_reset; TYPE_1__* baud_rate; int /*<<< orphan*/  iicbus; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int param; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t) ; 
#define  IIC_FAST 131 
#define  IIC_FASTEST 130 
#define  IIC_SLOW 129 
#define  IIC_UNKNOWN 128 
 int TWSI_CONTROL_TWSIEN ; 
 int /*<<< orphan*/  FUNC2 (struct twsi_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 struct twsi_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct twsi_softc*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int
FUNC8(device_t dev, u_char speed, u_char addr, u_char *oldaddr)
{
	struct twsi_softc *sc;
	uint32_t param;
#ifdef EXT_RESOURCES
	u_int busfreq;
#endif

	sc = FUNC4(dev);

#ifdef EXT_RESOURCES
	busfreq = IICBUS_GET_FREQUENCY(sc->iicbus, speed);

	if (twsi_calc_baud_rate(sc, busfreq, &param) == -1) {
#endif
		switch (speed) {
		case IIC_SLOW:
		case IIC_FAST:
			param = sc->baud_rate[speed].param;
			FUNC3(dev, "Using IIC_FAST mode with speed param=%x\n", param);
			break;
		case IIC_FASTEST:
		case IIC_UNKNOWN:
		default:
			param = sc->baud_rate[IIC_FAST].param;
			FUNC3(dev, "Using IIC_FASTEST/UNKNOWN mode with speed param=%x\n", param);
			break;
		}
#ifdef EXT_RESOURCES
	}
#endif

	FUNC3(dev, "Using clock param=%x\n", param);

	FUNC5(&sc->mutex);
	FUNC2(sc, sc->reg_soft_reset, 0x0);
	FUNC2(sc, sc->reg_baud_rate, param);
	FUNC2(sc, sc->reg_control, TWSI_CONTROL_TWSIEN);
	FUNC0(1000);
	FUNC6(&sc->mutex);

	return (0);
}
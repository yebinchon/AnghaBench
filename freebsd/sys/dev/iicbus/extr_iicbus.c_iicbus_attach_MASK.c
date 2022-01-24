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
typedef  int /*<<< orphan*/  u_char ;
struct iicbus_softc {int strict; int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct iicbus_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IIC_FASTEST ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int,char*,int*) ; 

__attribute__((used)) static int
FUNC12(device_t dev)
{
#if SCAN_IICBUS
	unsigned char addr;
#endif
	struct iicbus_softc *sc = FUNC0(dev);
	int strict;

	sc->dev = dev;
	FUNC9(&sc->lock, "iicbus", NULL, MTX_DEF);
	FUNC7(dev, 0);
	FUNC8(dev, IIC_FASTEST, 0, NULL);
	if (FUNC11(FUNC4(dev),
		FUNC5(dev), "strict", &strict) == 0)
		sc->strict = strict;
	else
		sc->strict = 1;

	/* device probing is meaningless since the bus is supposed to be
	 * hot-plug. Moreover, some I2C chips do not appreciate random
	 * accesses like stop after start to fast, reads for less than
	 * x bytes...
	 */
#if SCAN_IICBUS
	printf("Probing for devices on iicbus%d:", device_get_unit(dev));

	/* probe any devices */
	for (addr = 16; addr < 240; addr++) {
		if (iic_probe_device(dev, (u_char)addr)) {
			printf(" <%x>", addr);
		}
	}
	printf("\n");
#endif
	FUNC3(dev);
	FUNC1(dev);
	FUNC2(dev);
        return (0);
}
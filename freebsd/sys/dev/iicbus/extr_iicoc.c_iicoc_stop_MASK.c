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
struct iicoc_softc {int /*<<< orphan*/  sc_mtx; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  OC_COMMAND_STOP ; 
 int /*<<< orphan*/  OC_I2C_CMD_REG ; 
 int /*<<< orphan*/  OC_STATUS_BUSY ; 
 struct iicoc_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int 
FUNC5(device_t dev)
{
	int error = 0;
	struct iicoc_softc *sc;

	sc = FUNC0(dev);
	FUNC3(&sc->sc_mtx);
	FUNC1(dev, OC_I2C_CMD_REG, OC_COMMAND_STOP);
	FUNC2(dev, OC_STATUS_BUSY);  /* wait for idle */
	FUNC4(&sc->sc_mtx);
	return (error);

}
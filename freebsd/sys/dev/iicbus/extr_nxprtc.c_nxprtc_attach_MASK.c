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
struct TYPE_2__ {void* ich_arg; int /*<<< orphan*/  ich_func; } ;
struct nxprtc_softc {int chiptype; int use_timer; TYPE_1__ config_hook; int /*<<< orphan*/  tmcaddr; int /*<<< orphan*/  secaddr; int /*<<< orphan*/  busdev; void* dev; } ;
typedef  void* device_t ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  PCF8523_R_SECOND ; 
 int /*<<< orphan*/  PCF8523_R_TMR_A_COUNT ; 
 int /*<<< orphan*/  PCF8563_R_SECOND ; 
 int /*<<< orphan*/  PCF8563_R_TMR_COUNT ; 
#define  TYPE_PCA2129 133 
#define  TYPE_PCA8565 132 
#define  TYPE_PCF2127 131 
#define  TYPE_PCF2129 130 
#define  TYPE_PCF8523 129 
#define  TYPE_PCF8563 128 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 struct nxprtc_softc* FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*,char*) ; 
 int FUNC4 (void*) ; 
 int /*<<< orphan*/  nxprtc_start ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct nxprtc_softc *sc;

	sc = FUNC2(dev);
	sc->dev = dev;
	sc->busdev = FUNC1(dev);

	/* We need to know what kind of chip we're driving. */
	sc->chiptype = FUNC4(dev);

	/* The features and some register addresses vary by chip type. */
	switch (sc->chiptype) {
	case TYPE_PCA2129:
	case TYPE_PCF2129:
	case TYPE_PCF2127:
	case TYPE_PCF8523:
		sc->secaddr = PCF8523_R_SECOND;
		sc->tmcaddr = PCF8523_R_TMR_A_COUNT;
		sc->use_timer = true;
		break;
	case TYPE_PCA8565:
	case TYPE_PCF8563:
		sc->secaddr = PCF8563_R_SECOND;
		sc->tmcaddr = PCF8563_R_TMR_COUNT;
		sc->use_timer = true;
		break;
	default:
		FUNC3(dev, "impossible: cannot determine chip type\n");
		return (ENXIO);
	}

	/*
	 * We have to wait until interrupts are enabled.  Sometimes I2C read
	 * and write only works when the interrupts are available.
	 */
	sc->config_hook.ich_func = nxprtc_start;
	sc->config_hook.ich_arg = dev;
	if (FUNC0(&sc->config_hook) != 0)
		return (ENOMEM);

	return (0);
}
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
struct scc_softc {int /*<<< orphan*/ * sc_class; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,uintptr_t*) ; 
 int ENXIO ; 
 uintptr_t QUICC_DEVTYPE_SCC ; 
 int /*<<< orphan*/  QUICC_IVAR_BRGCLK ; 
 int /*<<< orphan*/  QUICC_IVAR_DEVTYPE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct scc_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,uintptr_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  scc_quicc_class ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	device_t parent;
	struct scc_softc *sc;
	uintptr_t devtype, rclk;
	int error;

	parent = FUNC1(dev);

	error = FUNC0(parent, dev, QUICC_IVAR_DEVTYPE, &devtype);
	if (error)
		return (error);
	if (devtype != QUICC_DEVTYPE_SCC)
		return (ENXIO);

	FUNC3(dev, "QUICC quad channel SCC");

	sc = FUNC2(dev);
	sc->sc_class = &scc_quicc_class;
	if (FUNC0(parent, dev, QUICC_IVAR_BRGCLK, &rclk))
		rclk = 0;
	return (FUNC4(dev, 0, rclk, 0));
}
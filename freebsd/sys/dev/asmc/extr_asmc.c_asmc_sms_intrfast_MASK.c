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
typedef  int /*<<< orphan*/  uint8_t ;
struct asmc_softc {int /*<<< orphan*/  sc_sms_task; int /*<<< orphan*/  sc_sms_tq; int /*<<< orphan*/  sc_sms_intrtype; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_sms_intr_works; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct asmc_softc*) ; 
 int FILTER_HANDLED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct asmc_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(void *arg)
{
	uint8_t type;
	device_t dev = (device_t) arg;
	struct asmc_softc *sc = FUNC2(dev);
	if (!sc->sc_sms_intr_works)
		return (FILTER_HANDLED);

	FUNC3(&sc->sc_mtx);
	type = FUNC0(sc);
	FUNC4(&sc->sc_mtx);

	sc->sc_sms_intrtype = type;
	FUNC1(dev, type);

	FUNC5(sc->sc_sms_tq, &sc->sc_sms_task);
	return (FILTER_HANDLED);
}
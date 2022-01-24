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
struct hifn_softc {int sc_suspended; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct hifn_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hifn_softc*) ; 

__attribute__((used)) static int
FUNC2(device_t dev)
{
	struct hifn_softc *sc = FUNC0(dev);
#ifdef notyet
	hifn_stop(sc);
#endif
	sc->sc_suspended = 1;

	return (0);
}
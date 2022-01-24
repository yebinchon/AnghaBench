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
struct eventtimer {int /*<<< orphan*/  et_priv; } ;
struct attimer_softc {scalar_t__ period; int /*<<< orphan*/  mode; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  MODE_STOP ; 
 struct attimer_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC2(struct eventtimer *et)
{
	device_t dev = (device_t)et->et_priv;
	struct attimer_softc *sc = FUNC0(dev);
	
	sc->mode = MODE_STOP;
	sc->period = 0;
	FUNC1(sc->mode, sc->period);
	return (0);
}
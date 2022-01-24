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
struct est_softc {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct est_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int mp_ncpus ; 
 int strict ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct est_softc *sc;

	sc = FUNC1(dev);
	sc->dev = dev;

	/* On SMP system we can't guarantie independent freq setting. */
	if (strict == -1 && mp_ncpus > 1)
		strict = 0;
	/* Check CPU for supported settings. */
	if (FUNC2(dev))
		return (ENXIO);

	FUNC0(dev);
	return (0);
}
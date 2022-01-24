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
struct gpioiic_softc {int /*<<< orphan*/  sda_pin; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct gpioiic_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct gpioiic_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(device_t dev)
{
	struct gpioiic_softc		*sc = FUNC0(dev);

	return (FUNC1(sc, sc->sda_pin));
}
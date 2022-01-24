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
typedef  int uint64_t ;
struct vtmmio_softc {int vtmmio_features; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct vtmmio_softc* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(device_t dev, uint64_t feature)
{
	struct vtmmio_softc *sc;

	sc = FUNC0(dev);

	return ((sc->vtmmio_features & feature) != 0);
}
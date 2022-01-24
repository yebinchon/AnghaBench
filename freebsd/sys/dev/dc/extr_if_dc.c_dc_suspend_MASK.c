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
struct dc_softc {int suspended; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dc_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct dc_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct dc_softc*) ; 
 struct dc_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct dc_softc *sc;

	sc = FUNC3(dev);
	FUNC0(sc);
	FUNC2(sc);
	sc->suspended = 1;
	FUNC1(sc);

	return (0);
}
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
struct dpms_softc {int /*<<< orphan*/  dpms_initial_state; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct dpms_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(device_t dev)
{
	struct dpms_softc *sc;

	sc = FUNC0(dev);
	FUNC1(sc->dpms_initial_state);
	return (0);
}
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
struct e6060sw_softc {int /*<<< orphan*/  callout_tick; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct e6060sw_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct e6060sw_softc*) ; 
 int /*<<< orphan*/  hz ; 

__attribute__((used)) static void
FUNC2(void *arg)
{
	struct e6060sw_softc *sc;

	sc = arg;

	FUNC1(sc);
	FUNC0(&sc->callout_tick, hz, e6060sw_tick, sc);
}
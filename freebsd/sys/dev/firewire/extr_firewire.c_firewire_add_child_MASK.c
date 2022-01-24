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
typedef  int /*<<< orphan*/  u_int ;
struct firewire_softc {int /*<<< orphan*/  fc; } ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,char const*,int) ; 
 struct firewire_softc* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static device_t
FUNC4(device_t dev, u_int order, const char *name, int unit)
{
	device_t child;
	struct firewire_softc *sc;

	sc = FUNC1(dev);
	child = FUNC0(dev, name, unit);
	if (child) {
		FUNC3(child, sc->fc);
		FUNC2(child);
	}

	return child;
}
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
struct rtl8366rb_softc {scalar_t__ chip_type; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 scalar_t__ RTL8366RB ; 
 int /*<<< orphan*/  FUNC0 (struct rtl8366rb_softc*,int) ; 
 struct rtl8366rb_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct rtl8366rb_softc *sc;

	sc = FUNC1(dev);

	FUNC0(sc, sizeof(*sc));
	if (FUNC3(dev) != 0)
		return (ENXIO);
	if (sc->chip_type == RTL8366RB)
		FUNC2(dev, "RTL8366RB Ethernet Switch Controller");
	else
		FUNC2(dev, "RTL8366SR Ethernet Switch Controller");
	return (BUS_PROBE_DEFAULT);
}
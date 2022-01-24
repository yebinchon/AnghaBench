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
struct e6060sw_softc {int numports; scalar_t__ smi_offset; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ CORE_REGISTER ; 
 int DOT1QMODEMASK ; 
 int DOT1QMODESHIFT ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PORT_CONTROL2 ; 
 int /*<<< orphan*/  PORT_DEFVLAN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct e6060sw_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(device_t dev, int mode)
{
	struct e6060sw_softc *sc;
	int i;
	int data;

	sc = FUNC3(dev);

	for (i = 0; i <= sc->numports; i++) {
		data = FUNC0(FUNC2(dev),
		    CORE_REGISTER + sc->smi_offset + i, PORT_CONTROL2);
		data &= ~(DOT1QMODEMASK << DOT1QMODESHIFT);
		data |= mode << DOT1QMODESHIFT;
		FUNC1(FUNC2(dev),
		    CORE_REGISTER + sc->smi_offset + i, PORT_CONTROL2, data);

		data = FUNC0(FUNC2(dev), 
		    CORE_REGISTER + sc->smi_offset + i,
		    PORT_DEFVLAN);
		data &= ~0xfff;
		data |= 1;
		FUNC1(FUNC2(dev), 
		    CORE_REGISTER + sc->smi_offset + i,
		    PORT_DEFVLAN, data);
	}
}
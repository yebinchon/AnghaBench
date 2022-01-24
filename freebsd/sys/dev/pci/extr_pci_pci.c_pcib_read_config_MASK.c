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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  u_int ;
struct pcib_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct pcib_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pcib_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static uint32_t
FUNC5(device_t dev, u_int b, u_int s, u_int f, u_int reg, int width)
{
#ifdef PCI_HP
	struct pcib_softc *sc;

	sc = device_get_softc(dev);
	if (!pcib_present(sc)) {
		switch (width) {
		case 2:
			return (0xffff);
		case 1:
			return (0xff);
		default:
			return (0xffffffff);
		}
	}
#endif
	FUNC4(dev, b, &s, &f);
	return(FUNC0(FUNC1(FUNC1(dev)), b, s,
	    f, reg, width));
}
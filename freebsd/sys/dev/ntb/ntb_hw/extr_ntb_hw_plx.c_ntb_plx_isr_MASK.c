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
struct ntb_plx_softc {scalar_t__ link; } ;
typedef  void* device_t ;

/* Variables and functions */
 int FUNC0 (struct ntb_plx_softc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ntb_plx_softc*,int,int) ; 
 struct ntb_plx_softc* FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*,char*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 

__attribute__((used)) static void
FUNC7(void *arg)
{
	device_t dev = arg;
	struct ntb_plx_softc *sc = FUNC2(dev);
	uint32_t val;

	FUNC4((device_t)arg, 0);

	if (sc->link)	/* Link Interface has no Link Error registers. */
		return;

	val = FUNC0(sc, 0xfe0);
	if (val == 0)
		return;
	FUNC1(sc, 0xfe0, val);
	if (val & 1)
		FUNC3(dev, "Correctable Error\n");
	if (val & 2)
		FUNC3(dev, "Uncorrectable Error\n");
	if (val & 4) {
		/* DL_Down resets link side registers, have to reinit. */
		FUNC6(dev);
		FUNC5(dev);
	}
	if (val & 8)
		FUNC3(dev, "Uncorrectable Error Message Drop\n");
}
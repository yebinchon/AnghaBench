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
typedef  int u_int32_t ;
struct agp_ali_softc {int /*<<< orphan*/  gatt; int /*<<< orphan*/  initial_aperture; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AGP_ALI_ATTBASE ; 
 int /*<<< orphan*/  AGP_ALI_TLBCTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct agp_ali_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct agp_ali_softc *sc = FUNC4(dev);
	u_int32_t attbase;

	FUNC1(dev);

	/* Disable the TLB.. */
	FUNC6(dev, AGP_ALI_TLBCTRL, 0x90, 1);

	/* Put the aperture back the way it started. */
	FUNC0(dev, sc->initial_aperture);
	attbase = FUNC5(dev, AGP_ALI_ATTBASE, 4);
	FUNC6(dev, AGP_ALI_ATTBASE, attbase & 0xfff, 4);

	FUNC2(sc->gatt);
	FUNC3(dev);
	return 0;
}
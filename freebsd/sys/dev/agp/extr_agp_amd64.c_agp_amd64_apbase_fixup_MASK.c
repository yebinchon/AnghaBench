#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  as_aperture; } ;
struct agp_amd64_softc {int apbase; int n_mctrl; int /*<<< orphan*/ * mctrl; TYPE_1__ agp; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AGP_AMD64_APBASE ; 
 int AGP_AMD64_APBASE_MASK ; 
 struct agp_amd64_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(device_t dev)
{
	struct agp_amd64_softc *sc = FUNC0(dev);
	uint32_t apbase;
	int i;

	sc->apbase = FUNC2(sc->agp.as_aperture);
	apbase = (sc->apbase >> 25) & AGP_AMD64_APBASE_MASK;
	for (i = 0; i < sc->n_mctrl; i++)
		FUNC1(0, sc->mctrl[i], 3,
		    AGP_AMD64_APBASE, apbase, 4);
}
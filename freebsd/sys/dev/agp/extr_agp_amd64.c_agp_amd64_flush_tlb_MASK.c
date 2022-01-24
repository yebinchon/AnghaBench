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
struct agp_amd64_softc {int n_mctrl; int /*<<< orphan*/ * mctrl; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AGP_AMD64_CACHECTRL ; 
 int AGP_AMD64_CACHECTRL_INVGART ; 
 struct agp_amd64_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC3(device_t dev)
{
	struct agp_amd64_softc *sc = FUNC0(dev);
	int i;

	for (i = 0; i < sc->n_mctrl; i++)
		FUNC2(0, sc->mctrl[i], 3, AGP_AMD64_CACHECTRL,
		    FUNC1(0, sc->mctrl[i], 3, AGP_AMD64_CACHECTRL, 4) |
		    AGP_AMD64_CACHECTRL_INVGART, 4);
}
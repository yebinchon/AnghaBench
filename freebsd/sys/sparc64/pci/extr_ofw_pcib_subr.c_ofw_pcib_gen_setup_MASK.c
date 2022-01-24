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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct ofw_pcib_gen_softc {scalar_t__ ops_node; int /*<<< orphan*/  ops_iinfo; TYPE_1__ ops_pcib_sc; } ;
typedef  int /*<<< orphan*/  ofw_pci_intr_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 struct ofw_pcib_gen_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *,int) ; 

void
FUNC4(device_t bridge)
{
	struct ofw_pcib_gen_softc *sc;

	sc = FUNC1(bridge);
	sc->ops_pcib_sc.dev = bridge;
	sc->ops_node = FUNC2(bridge);
	FUNC0(sc->ops_node != 0,
	    ("ofw_pcib_gen_setup: no ofw pci parent bus!"));

	FUNC3(sc->ops_node, &sc->ops_iinfo,
	    sizeof(ofw_pci_intr_t));
}
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
struct ofw_pcib_softc {int /*<<< orphan*/  ops_iinfo; int /*<<< orphan*/  ops_node; TYPE_1__ ops_pcib_sc; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  cell_t ;

/* Variables and functions */
 struct ofw_pcib_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct ofw_pcib_softc *sc;

	sc = FUNC0(dev);
	sc->ops_pcib_sc.dev = dev;
	sc->ops_node = FUNC1(dev);

	FUNC2(sc->ops_node, &sc->ops_iinfo,
	    sizeof(cell_t));

	FUNC4(dev);
	return (FUNC3(dev));
}
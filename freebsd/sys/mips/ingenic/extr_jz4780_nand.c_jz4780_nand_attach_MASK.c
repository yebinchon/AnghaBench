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
struct jz4780_nand_softc {int /*<<< orphan*/  res; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct jz4780_nand_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  jz4780_nand_spec ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct jz4780_nand_softc *sc = FUNC1(dev);

	sc->dev = dev;

	if (FUNC0(dev, jz4780_nand_spec, sc->res)) {
		FUNC2(dev, "could not allocate resources for device\n");
		return (ENXIO);
	}

	return (0);
}
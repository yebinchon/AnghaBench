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
struct resource {int dummy; } ;
struct intr_map_data {int dummy; } ;
struct intr_irqsrc {int dummy; } ;
struct bcm_mips_softc {int dummy; } ;
struct bcm_mips_irqsrc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bcm_mips_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm_mips_softc*) ; 
 int FUNC2 (struct bcm_mips_softc*,struct bcm_mips_irqsrc*,struct resource*) ; 
 struct bcm_mips_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev, struct intr_irqsrc *irqsrc,
    struct resource *res, struct intr_map_data *data)
{
	struct bcm_mips_softc	*sc;
	struct bcm_mips_irqsrc	*isrc;
	int			 error;

	sc = FUNC3(dev);
	isrc = (struct bcm_mips_irqsrc *)irqsrc;

	/* Assign a CPU interrupt */
	FUNC0(sc);
	error = FUNC2(sc, isrc, res);
	FUNC1(sc);

	return (error);
}
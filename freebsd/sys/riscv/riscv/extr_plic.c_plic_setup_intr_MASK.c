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
struct plic_softc {int dummy; } ;
struct plic_irqsrc {int dummy; } ;
struct intr_map_data {int dummy; } ;
struct intr_irqsrc {int /*<<< orphan*/  isrc_cpu; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpuid ; 
 struct plic_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct intr_irqsrc*) ; 

__attribute__((used)) static int
FUNC4(device_t dev, struct intr_irqsrc *isrc,
    struct resource *res, struct intr_map_data *data)
{
	struct plic_softc *sc;
	struct plic_irqsrc *src;

	sc = FUNC2(dev);
	src = (struct plic_irqsrc *)isrc;

	/* Bind to the boot CPU for now. */
	FUNC0(FUNC1(cpuid), &isrc->isrc_cpu);
	FUNC3(dev, isrc);

	return (0);
}
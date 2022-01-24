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
struct tpm_sc {int /*<<< orphan*/ * mem_res; int /*<<< orphan*/  mem_rid; int /*<<< orphan*/ * irq_res; int /*<<< orphan*/  irq_rid; int /*<<< orphan*/ * intr_cookie; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct tpm_sc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tpm_sc*) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct tpm_sc *sc;

	sc = FUNC2(dev);
	FUNC3(sc);

	if (sc->intr_cookie != NULL)
		FUNC1(dev, sc->irq_res, sc->intr_cookie);

	if (sc->irq_res != NULL)
		FUNC0(dev, SYS_RES_IRQ,
		    sc->irq_rid, sc->irq_res);

	if (sc->mem_res != NULL)
		FUNC0(dev, SYS_RES_MEMORY,
		    sc->mem_rid, sc->mem_res);

	return (0);
}
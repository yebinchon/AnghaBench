#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  dev; scalar_t__ legacy_irq; int /*<<< orphan*/  irq_res; int /*<<< orphan*/  ih; } ;
typedef  TYPE_1__ mxge_softc_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(mxge_softc_t *sc)
{
	FUNC1(sc->dev, sc->irq_res, sc->ih);
	FUNC0(sc->dev, SYS_RES_IRQ,
			     sc->legacy_irq ? 0 : 1, sc->irq_res);
	if (!sc->legacy_irq)
		FUNC2(sc->dev);
}
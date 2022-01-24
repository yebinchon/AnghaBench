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
struct irq {scalar_t__ res; int /*<<< orphan*/  rid; scalar_t__ tag; } ;
struct adapter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct irq*,int) ; 

__attribute__((used)) static int
FUNC3(struct adapter *sc, struct irq *irq)
{
	if (irq->tag)
		FUNC1(sc->dev, irq->res, irq->tag);
	if (irq->res)
		FUNC0(sc->dev, SYS_RES_IRQ, irq->rid, irq->res);

	FUNC2(irq, sizeof(*irq));

	return (0);
}
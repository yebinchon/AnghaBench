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
typedef  int uint8_t ;
struct vmctx {int dummy; } ;
struct pirq {int reg; scalar_t__ active_count; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int PIRQ_DIS ; 
 int PIRQ_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct pirq*) ; 
 scalar_t__ FUNC2 (int) ; 
 struct pirq* pirqs ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct vmctx*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct vmctx*,int,int) ; 

void
FUNC7(struct vmctx *ctx, int pin, uint8_t val)
{
	struct pirq *pirq;

	FUNC0(pin > 0 && pin <= FUNC1(pirqs));
	pirq = &pirqs[pin - 1];
	FUNC3(&pirq->lock);
	if (pirq->reg != (val & (PIRQ_DIS | PIRQ_IRQ))) {
		if (pirq->active_count != 0 && FUNC2(pirq->reg))
			FUNC6(ctx, pirq->reg & PIRQ_IRQ, -1);
		pirq->reg = val & (PIRQ_DIS | PIRQ_IRQ);
		if (pirq->active_count != 0 && FUNC2(pirq->reg))
			FUNC5(ctx, pirq->reg & PIRQ_IRQ, -1);
	}
	FUNC4(&pirq->lock);
}
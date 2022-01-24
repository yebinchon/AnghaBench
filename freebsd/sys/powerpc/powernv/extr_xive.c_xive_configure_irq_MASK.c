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
typedef  int /*<<< orphan*/  u_int ;
struct xive_irq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  M_XIVE ; 
 struct xive_irq* FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xive_irq*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct xive_irq *
FUNC2(u_int irq)
{
	struct xive_irq *irqd;

	irqd = FUNC0(sizeof(struct xive_irq), M_XIVE, M_WAITOK);

	FUNC1(irqd, irq);

	return (irqd);
}
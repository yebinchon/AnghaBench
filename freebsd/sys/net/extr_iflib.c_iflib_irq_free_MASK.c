#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* if_irq_t ;
typedef  TYPE_2__* if_ctx_t ;
struct TYPE_6__ {int /*<<< orphan*/  ifc_dev; } ;
struct TYPE_5__ {scalar_t__ ii_res; scalar_t__ ii_tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

void
FUNC3(if_ctx_t ctx, if_irq_t irq)
{

	if (irq->ii_tag)
		FUNC1(ctx->ifc_dev, irq->ii_res, irq->ii_tag);

	if (irq->ii_res)
		FUNC0(ctx->ifc_dev, SYS_RES_IRQ,
		    FUNC2(irq->ii_res), irq->ii_res);
}
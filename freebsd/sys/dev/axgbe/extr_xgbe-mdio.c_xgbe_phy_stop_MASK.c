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
struct TYPE_2__ {scalar_t__ link; } ;
struct xgbe_prv_data {TYPE_1__ phy; int /*<<< orphan*/  an_irq_tag; int /*<<< orphan*/  an_irq_res; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MDIO_AN_INTMASK ; 
 int /*<<< orphan*/  MDIO_MMD_AN ; 
 int /*<<< orphan*/  FUNC0 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct xgbe_prv_data*) ; 

__attribute__((used)) static void FUNC4(struct xgbe_prv_data *pdata)
{

	/* Disable auto-negotiation */
	FUNC2(pdata);

	/* Disable auto-negotiation interrupts */
	FUNC0(pdata, MDIO_MMD_AN, MDIO_AN_INTMASK, 0);

	FUNC1(pdata->dev, pdata->an_irq_res, pdata->an_irq_tag);

	pdata->phy.link = 0;

	FUNC3(pdata);
}
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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  mh_imask; } ;
struct mwl_hal_priv {TYPE_1__ public; } ;
struct mwl_hal {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MACREG_REG_A2H_INTERRUPT_MASK ; 
 int /*<<< orphan*/  MACREG_REG_INT_CODE ; 
 struct mwl_hal_priv* FUNC0 (struct mwl_hal*) ; 
 int /*<<< orphan*/  FUNC1 (struct mwl_hal_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mwl_hal_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(struct mwl_hal *mh0, uint32_t mask)
{
	struct mwl_hal_priv *mh = FUNC0(mh0);

	FUNC2(mh, MACREG_REG_A2H_INTERRUPT_MASK, 0);
	FUNC1(mh, MACREG_REG_INT_CODE);

	mh->public.mh_imask = mask;
	FUNC2(mh, MACREG_REG_A2H_INTERRUPT_MASK, mask);
	FUNC1(mh, MACREG_REG_INT_CODE);
}
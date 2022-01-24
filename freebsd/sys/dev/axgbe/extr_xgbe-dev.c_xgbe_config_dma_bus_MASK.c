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
struct xgbe_prv_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLEN_256 ; 
 int /*<<< orphan*/  DMA_SBMR ; 
 int /*<<< orphan*/  EAME ; 
 int /*<<< orphan*/  UNDEF ; 
 int /*<<< orphan*/  FUNC0 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct xgbe_prv_data *pdata)
{
	/* Set enhanced addressing mode */
	FUNC0(pdata, DMA_SBMR, EAME, 1);

	/* Set the System Bus mode */
	FUNC0(pdata, DMA_SBMR, UNDEF, 1);
	FUNC0(pdata, DMA_SBMR, BLEN_256, 1);
}
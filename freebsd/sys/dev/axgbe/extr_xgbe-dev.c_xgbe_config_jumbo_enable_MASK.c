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
struct xgbe_prv_data {int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  JE ; 
 int /*<<< orphan*/  MAC_RCR ; 
 int /*<<< orphan*/  FUNC0 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ XGMAC_STD_PACKET_MTU ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct xgbe_prv_data *pdata)
{
	unsigned int val;

	val = (FUNC1(pdata->netdev) > XGMAC_STD_PACKET_MTU) ? 1 : 0;

	FUNC0(pdata, MAC_RCR, JE, val);
}
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
struct xgbe_prv_data {unsigned long link_check; } ;

/* Variables and functions */
 unsigned long XGBE_LINK_TIMEOUT ; 
 unsigned long hz ; 
 unsigned long ticks ; 
 int /*<<< orphan*/  FUNC0 (struct xgbe_prv_data*) ; 

__attribute__((used)) static void FUNC1(struct xgbe_prv_data *pdata)
{
	unsigned long link_timeout;

	link_timeout = pdata->link_check + (XGBE_LINK_TIMEOUT * hz);
	if ((int)(ticks - link_timeout) >= 0) {
		FUNC0(pdata);
	}
}
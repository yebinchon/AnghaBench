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
typedef  int /*<<< orphan*/  u32 ;
struct adapter {int dummy; } ;

/* Variables and functions */
 scalar_t__ A_TP_RSS_PF0_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,int /*<<< orphan*/ *,int,scalar_t__,int) ; 

void FUNC1(struct adapter *adapter, unsigned int index,
			   u32 *valp, bool sleep_ok)
{
	FUNC0(adapter, valp, 1, A_TP_RSS_PF0_CONFIG + index, sleep_ok);
}
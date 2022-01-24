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
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  A_PM_TX_DBG_CTRL ; 
 int /*<<< orphan*/  A_PM_TX_DBG_DATA ; 
 scalar_t__ A_PM_TX_DBG_STAT0 ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,char*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,scalar_t__) ; 

__attribute__((used)) static bool FUNC3(struct adapter *adap, int arg, bool verbose)
{
	int i;
	u32 data[17];

	FUNC2(adap, A_PM_TX_DBG_CTRL, A_PM_TX_DBG_DATA, &data[0],
	    FUNC0(data), A_PM_TX_DBG_STAT0);
	for (i = 0; i < FUNC0(data); i++) {
		FUNC1(adap, "  - PM_TX_DBG_STAT%u (0x%x) = 0x%08x\n", i,
		    A_PM_TX_DBG_STAT0 + i, data[i]);
	}

	return (false);
}
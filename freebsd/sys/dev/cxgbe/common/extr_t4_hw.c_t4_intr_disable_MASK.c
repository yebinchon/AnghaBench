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
struct adapter {int pf; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_PL_INT_MAP0 ; 
 int /*<<< orphan*/  A_PL_PF_INT_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct adapter *adap)
{

	FUNC2(adap, FUNC0(A_PL_PF_INT_ENABLE), 0);
	FUNC1(adap, A_PL_INT_MAP0, 1 << adap->pf, 0);
}
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
 int /*<<< orphan*/  A_MA_INT_WRAP_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(struct adapter *adap, int arg, bool verbose)
{
	u32 v;

	v = FUNC3(adap, A_MA_INT_WRAP_STATUS);
	FUNC0(adap,
	    "MA address wrap-around error by client %u to address %#x\n",
	    FUNC2(v), FUNC1(v) << 4);
	FUNC4(adap, A_MA_INT_WRAP_STATUS, v);

	return (false);
}
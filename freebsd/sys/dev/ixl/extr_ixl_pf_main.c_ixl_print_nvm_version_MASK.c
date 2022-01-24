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
struct sbuf {int dummy; } ;
struct i40e_hw {int dummy; } ;
struct ixl_pf {int /*<<< orphan*/  dev; struct i40e_hw hw; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_hw*,struct sbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct sbuf*) ; 
 struct sbuf* FUNC5 () ; 

void
FUNC6(struct ixl_pf *pf)
{
	struct i40e_hw *hw = &pf->hw;
	device_t dev = pf->dev;
	struct sbuf *sbuf;

	sbuf = FUNC5();
	FUNC1(hw, sbuf);
	FUNC4(sbuf);
	FUNC0(dev, "%s\n", FUNC2(sbuf));
	FUNC3(sbuf);
}
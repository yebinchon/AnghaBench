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
struct clknode {int dummy; } ;
struct clkdom {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  clk_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC2 (struct clknode*,int /*<<< orphan*/ ) ; 
 struct clknode* FUNC3 (struct clkdom*,intptr_t) ; 

int
FUNC4(device_t dev, struct clkdom *clkdom, intptr_t id, clk_t *clk)
{
	struct clknode *clknode;

	FUNC0();

	clknode = FUNC3(clkdom, id);
	if (clknode == NULL) {
		FUNC1();
		return (ENODEV);
	}
	*clk = FUNC2(clknode, dev);
	FUNC1();

	return (0);
}
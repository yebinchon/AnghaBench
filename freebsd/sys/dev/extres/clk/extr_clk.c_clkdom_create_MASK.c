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
struct clkdom {int /*<<< orphan*/  ofw_mapper; int /*<<< orphan*/  clknode_list; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CTLFLAG_RD ; 
 int CTLTYPE_STRING ; 
 int /*<<< orphan*/  M_CLOCK ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,struct clkdom*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  clkdom_sysctl ; 
 int /*<<< orphan*/  clknode_default_ofw_map ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct clkdom* FUNC5 (int,int /*<<< orphan*/ ,int) ; 

struct clkdom *
FUNC6(device_t dev)
{
	struct clkdom *clkdom;

	clkdom = FUNC5(sizeof(struct clkdom), M_CLOCK, M_WAITOK | M_ZERO);
	clkdom->dev = dev;
	FUNC2(&clkdom->clknode_list);
#ifdef FDT
	clkdom->ofw_mapper = clknode_default_ofw_map;
#endif

	FUNC0(FUNC3(dev),
	  FUNC1(FUNC4(dev)),
	  OID_AUTO, "clocks",
	  CTLTYPE_STRING | CTLFLAG_RD,
		    clkdom, 0, clkdom_sysctl,
		    "A",
		    "Clock list for the domain");

	return (clkdom);
}
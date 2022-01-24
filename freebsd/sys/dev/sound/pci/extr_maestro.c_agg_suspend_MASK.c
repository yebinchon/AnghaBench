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
struct agg_info {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct agg_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PCI_POWERSTATE_D3 ; 
 int /*<<< orphan*/  PORT_HOSTINT_CTRL ; 
 int /*<<< orphan*/  FUNC1 (struct agg_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct agg_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct agg_info*) ; 
 struct agg_info* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct agg_info *ess = FUNC4(dev);

	FUNC0(ess, PORT_HOSTINT_CTRL, 0, 2);
	FUNC1(ess);
	FUNC2(ess, PCI_POWERSTATE_D3);
	FUNC3(ess);

	return 0;
}
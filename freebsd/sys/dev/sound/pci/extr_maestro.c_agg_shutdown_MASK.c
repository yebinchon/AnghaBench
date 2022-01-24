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
 int /*<<< orphan*/  PCI_POWERSTATE_D3 ; 
 int /*<<< orphan*/  FUNC0 (struct agg_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct agg_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct agg_info*) ; 
 struct agg_info* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct agg_info *ess = FUNC3(dev);

	FUNC0(ess);
	FUNC1(ess, PCI_POWERSTATE_D3);
	FUNC2(ess);

	return 0;
}
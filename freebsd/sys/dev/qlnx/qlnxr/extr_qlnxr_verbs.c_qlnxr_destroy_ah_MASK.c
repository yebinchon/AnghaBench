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
struct qlnxr_dev {int /*<<< orphan*/ * ha; } ;
struct qlnxr_ah {int dummy; } ;
struct ib_ah {int /*<<< orphan*/  device; } ;
typedef  int /*<<< orphan*/  qlnx_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct qlnxr_ah* FUNC1 (struct ib_ah*) ; 
 struct qlnxr_dev* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qlnxr_ah*) ; 

int
FUNC4(struct ib_ah *ibah)
{
	struct qlnxr_dev *dev;
	qlnx_host_t     *ha;
	struct qlnxr_ah *ah = FUNC1(ibah);
	
	dev = FUNC2((ibah->device));
	ha = dev->ha;

	FUNC0(ha, "in destroy_ah\n");

	FUNC3(ah);
	return 0;
}
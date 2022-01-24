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
struct qlnxr_dev {int /*<<< orphan*/  ha; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (struct qlnxr_dev*) ; 

int
FUNC2(struct qlnxr_dev *dev)
{
	int rc = 0;

	FUNC0(dev->ha, "enter\n");

	rc = FUNC1(dev);

	FUNC0(dev->ha, "exit rc = %d\n", rc);
	return (rc);
}
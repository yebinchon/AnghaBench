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
struct cdev {int dummy; } ;

/* Variables and functions */
 int WARN_GIANTOK ; 
 int WARN_SLEEPOK ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct cdev*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

void
FUNC4(struct cdev *dev)
{

	FUNC0(WARN_GIANTOK | WARN_SLEEPOK, NULL, "destroy_dev");
	FUNC2();
	FUNC1(dev);
	FUNC3();
}
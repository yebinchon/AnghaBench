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
 int /*<<< orphan*/  MAKEDEV_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (struct cdev*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct cdev *dev)
{

	FUNC0(dev, "DESTROY", MAKEDEV_WAITOK);
}
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
struct cdev {scalar_t__ si_threadcount; int /*<<< orphan*/  si_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MA_NOTOWNED ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int) ; 
 int /*<<< orphan*/  devmtx ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void	
FUNC3(struct cdev *dev, int ref)
{

	FUNC2(&devmtx, MA_NOTOWNED);
	if (!ref)
		return;
	FUNC0(dev->si_threadcount > 0,
	    ("%s threadcount is wrong", dev->si_name));
	FUNC1(&dev->si_threadcount, 1);
}
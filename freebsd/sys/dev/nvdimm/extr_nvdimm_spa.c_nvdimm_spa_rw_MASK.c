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
struct uio {int dummy; } ;
struct cdev {int /*<<< orphan*/  si_drv1; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct uio*) ; 

__attribute__((used)) static int
FUNC1(struct cdev *dev, struct uio *uio, int ioflag)
{

	return (FUNC0(dev->si_drv1, uio));
}
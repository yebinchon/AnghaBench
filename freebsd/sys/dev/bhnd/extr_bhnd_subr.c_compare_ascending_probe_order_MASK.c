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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(const void *lhs, const void *rhs)
{
	device_t	ldev, rdev;
	int		lorder, rorder;

	ldev = (*(const device_t *) lhs);
	rdev = (*(const device_t *) rhs);

	lorder = FUNC0(FUNC1(ldev), ldev);
	rorder = FUNC0(FUNC1(rdev), rdev);

	if (lorder < rorder) {
		return (-1);
	} else if (lorder > rorder) {
		return (1);
	} else {
		return (0);
	}
}
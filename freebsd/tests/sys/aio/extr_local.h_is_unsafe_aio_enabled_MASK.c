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
typedef  int /*<<< orphan*/  unsafe ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  sysctl_oid_name ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(void)
{
	size_t len;
	int unsafe;

	len = sizeof(unsafe);
	if (FUNC0(sysctl_oid_name, &unsafe, &len, NULL, 0) < 0) {
		if (errno == ENOENT)
			return (-1);
		return (0);
	}
	return (unsafe == 0 ? 0 : 1);
}
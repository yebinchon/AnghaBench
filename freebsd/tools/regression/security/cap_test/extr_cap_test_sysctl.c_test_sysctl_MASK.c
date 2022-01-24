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
typedef  int /*<<< orphan*/  i ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CTL_KERN ; 
 int KERN_OSRELDATE ; 
 int PASSED ; 
 scalar_t__ FUNC1 (int*,int,int*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC2(void)
{
	int i, oid[2];
	int success = PASSED;
	size_t len;

	oid[0] = CTL_KERN;
	oid[1] = KERN_OSRELDATE;
	len = sizeof(i);
	FUNC0(FUNC1(oid, 2, &i, &len, NULL, 0) == 0);

	return (success);
}
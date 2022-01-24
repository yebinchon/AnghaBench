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
typedef  int grant_ref_t ;
typedef  int /*<<< orphan*/  domid_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,unsigned long) ; 

int
FUNC3(domid_t domid, unsigned long pfn,
    grant_ref_t *result)
{
	int error, ref;

	error = FUNC1(1, &ref);
	if (FUNC0(error))
		return (error);

	FUNC2(ref, domid, pfn);

	*result = ref;
	return (0);
}
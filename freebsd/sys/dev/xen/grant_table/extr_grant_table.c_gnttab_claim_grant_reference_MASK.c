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
typedef  scalar_t__ grant_ref_t ;

/* Variables and functions */
 scalar_t__ GNTTAB_LIST_END ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

int
FUNC2(grant_ref_t *private_head)
{
	grant_ref_t g = *private_head;

	if (FUNC0(g == GNTTAB_LIST_END))
		return (g);
	*private_head = FUNC1(g);
	return (g);
}
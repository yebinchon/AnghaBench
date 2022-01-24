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
struct namedobj_instance {struct namedobj_instance* idx_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_IPFW ; 
 int /*<<< orphan*/  FUNC0 (struct namedobj_instance*,int /*<<< orphan*/ ) ; 

void
FUNC1(struct namedobj_instance *ni)
{

	FUNC0(ni->idx_mask, M_IPFW);
	FUNC0(ni, M_IPFW);
}
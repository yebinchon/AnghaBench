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
struct pipepair {int /*<<< orphan*/ * pp_label; } ;

/* Variables and functions */
 int MPC_OBJECT_PIPE ; 
 int mac_labeled ; 
 int /*<<< orphan*/ * FUNC0 () ; 

void
FUNC1(struct pipepair *pp)
{

	if (mac_labeled & MPC_OBJECT_PIPE)
		pp->pp_label = FUNC0();
	else
		pp->pp_label = NULL;
}
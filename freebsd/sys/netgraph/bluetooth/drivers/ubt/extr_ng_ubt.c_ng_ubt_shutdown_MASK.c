#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* node_p ;
struct TYPE_6__ {int nd_flags; } ;

/* Variables and functions */
 int NGF_REALLY_DIE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC3(node_p node)
{
	if (node->nd_flags & NGF_REALLY_DIE) {
		/*
                 * We came here because the USB device is being
		 * detached, so stop being persistent.
                 */
		FUNC1(node, NULL);
		FUNC2(node);
	} else
		FUNC0(node); /* tell ng_rmnode we are persisant */

	return (0);
}
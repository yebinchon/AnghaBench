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
struct bridge_port {scalar_t__ sysindex; } ;

/* Variables and functions */
 struct bridge_port* FUNC0 (struct bridge_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  b_p ; 

struct bridge_port *
FUNC1(struct bridge_port *bp)
{
	struct bridge_port *bp_next;

	if ((bp_next = FUNC0(bp, b_p)) == NULL ||
	    bp_next->sysindex != bp->sysindex)
		return (NULL);

	return (bp_next);
}
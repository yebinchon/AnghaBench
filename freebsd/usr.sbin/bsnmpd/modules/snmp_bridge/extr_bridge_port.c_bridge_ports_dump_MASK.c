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
struct bridge_port {int /*<<< orphan*/  port_no; int /*<<< orphan*/  p_name; } ;
struct bridge_if {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 struct bridge_port* FUNC0 (struct bridge_if*) ; 
 struct bridge_port* FUNC1 (struct bridge_port*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(struct bridge_if *bif)
{
	struct bridge_port *bp;

	for (bp = FUNC0(bif); bp != NULL;
	    bp = FUNC1(bp)) {
		FUNC2(LOG_ERR, "memif - %s, index - %d",
		bp->p_name, bp->port_no);
	}
}
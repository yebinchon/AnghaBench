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
struct bridge_ports {int dummy; } ;
struct bridge_port {int /*<<< orphan*/  sysindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bridge_ports*,struct bridge_port*,struct bridge_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bridge_ports*,struct bridge_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  b_p ; 
 struct bridge_port* FUNC2 (struct bridge_ports*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bridge_ports*,struct bridge_port*,struct bridge_port**) ; 

__attribute__((used)) static void
FUNC4(struct bridge_ports *headp,
	struct bridge_port *bp, struct bridge_port **f_bp)
{
	struct bridge_port *temp;

	if (*f_bp != NULL)
		FUNC3(headp, bp, f_bp);
	else {
		temp = FUNC2(headp, bp->sysindex);

		if (temp == NULL)
			FUNC1(headp, bp, b_p);
		else
			FUNC0(headp, temp, bp, b_p);
		*f_bp = bp;
	}
}
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
struct bridge_port {int dummy; } ;
struct bridge_if {struct bridge_port* f_bp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct bridge_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  b_p ; 
 struct bridge_port* FUNC1 (struct bridge_port*) ; 
 int /*<<< orphan*/  bridge_ports ; 
 int /*<<< orphan*/  FUNC2 (struct bridge_port*) ; 

void
FUNC3(struct bridge_port *bp, struct bridge_if *bif)
{
	if (bif->f_bp == bp)
		bif->f_bp = FUNC1(bp);

	FUNC0(&bridge_ports, bp, b_p);
	FUNC2(bp);
}
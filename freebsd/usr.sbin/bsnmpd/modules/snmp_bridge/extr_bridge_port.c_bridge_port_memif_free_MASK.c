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
struct bridge_port {scalar_t__ sysindex; } ;
struct bridge_if {scalar_t__ sysindex; struct bridge_port* f_bp; } ;

/* Variables and functions */
 struct bridge_port* FUNC0 (struct bridge_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bridge_ports*,struct bridge_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  b_p ; 
 int /*<<< orphan*/  FUNC2 (struct bridge_port*) ; 

__attribute__((used)) static void
FUNC3(struct bridge_ports *headp,
	struct bridge_if *bif)
{
	struct bridge_port *bp;

	while (bif->f_bp != NULL && bif->sysindex == bif->f_bp->sysindex) {
		bp = FUNC0(bif->f_bp, b_p);
		FUNC1(headp, bif->f_bp, b_p);
		FUNC2(bif->f_bp);
		bif->f_bp = bp;
	}
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rp_port {int /*<<< orphan*/  rp_tty; } ;
struct TYPE_3__ {int num_ports; scalar_t__ free; int /*<<< orphan*/  hwmtx; scalar_t__ hwmtx_init; struct rp_port* rp; } ;
typedef  TYPE_1__ CONTROLLER_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rp_port*,int /*<<< orphan*/ ) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(CONTROLLER_t *ctlp)
{
	struct	rp_port *rp;
	int i;

	if (ctlp->rp != NULL) {
		for (i = 0; i < ctlp->num_ports; i++) {
			rp = ctlp->rp + i;
			FUNC0(&ctlp->free, 1);
			FUNC4(rp->rp_tty);
			FUNC5(rp->rp_tty);
		}
                FUNC1(ctlp->rp, M_DEVBUF);
                ctlp->rp = NULL;
	}

	while (ctlp->free != 0) {
		FUNC3("rpwt", hz / 10);
	}

	if (ctlp->hwmtx_init)
		FUNC2(&ctlp->hwmtx);
}
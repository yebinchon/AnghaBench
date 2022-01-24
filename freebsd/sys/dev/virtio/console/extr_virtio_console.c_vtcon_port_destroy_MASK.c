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
struct vtcon_port {int vtcport_id; int /*<<< orphan*/  vtcport_mtx; int /*<<< orphan*/ * vtcport_outvq; int /*<<< orphan*/ * vtcport_invq; int /*<<< orphan*/ * vtcport_scport; int /*<<< orphan*/ * vtcport_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (struct vtcon_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct vtcon_port *port)
{

	port->vtcport_sc = NULL;
	port->vtcport_scport = NULL;
	port->vtcport_invq = NULL;
	port->vtcport_outvq = NULL;
	port->vtcport_id = -1;
	FUNC1(&port->vtcport_mtx);
	FUNC0(port, M_DEVBUF);
}
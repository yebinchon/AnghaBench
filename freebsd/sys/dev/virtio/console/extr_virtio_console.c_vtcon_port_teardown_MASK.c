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
struct vtcon_port {int /*<<< orphan*/  vtcport_flags; struct tty* vtcport_tty; } ;
struct tty {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VTCON_PORT_FLAG_GONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tty*) ; 
 int /*<<< orphan*/  vtcon_pending_free ; 
 int /*<<< orphan*/  FUNC2 (struct vtcon_port*) ; 

__attribute__((used)) static void
FUNC3(struct vtcon_port *port)
{
	struct tty *tp;

	tp = port->vtcport_tty;

	port->vtcport_flags |= VTCON_PORT_FLAG_GONE;

	if (tp != NULL) {
		FUNC0(&vtcon_pending_free, 1);
		FUNC1(tp);
	} else
		FUNC2(port);
}
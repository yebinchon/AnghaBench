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
typedef  int uint32_t ;
struct vtcon_port {int vtcport_flags; int /*<<< orphan*/  vtcport_alt_break_state; struct virtqueue* vtcport_invq; struct tty* vtcport_tty; } ;
struct virtqueue {int dummy; } ;
struct tty {int dummy; } ;

/* Variables and functions */
 int VTCON_PORT_FLAG_CONSOLE ; 
 int /*<<< orphan*/  FUNC0 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tty*,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*) ; 
 char* FUNC3 (struct virtqueue*,int*) ; 
 scalar_t__ FUNC4 (struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC5 (struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC6 (struct vtcon_port*,char*) ; 

__attribute__((used)) static void
FUNC7(struct vtcon_port *port)
{
	struct virtqueue *vq;
	struct tty *tp;
	char *buf;
	uint32_t len;
	int i, deq;

	tp = port->vtcport_tty;
	vq = port->vtcport_invq;

again:
	deq = 0;

	while ((buf = FUNC3(vq, &len)) != NULL) {
		for (i = 0; i < len; i++) {
#if defined(KDB)
			if (port->vtcport_flags & VTCON_PORT_FLAG_CONSOLE)
				kdb_alt_break(buf[i],
				    &port->vtcport_alt_break_state);
#endif
			FUNC1(tp, buf[i], 0);
		}
		FUNC6(port, buf);
		deq++;
	}
	FUNC2(tp);

	if (deq > 0)
		FUNC5(vq);

	if (FUNC4(vq) != 0)
		goto again;
}
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
struct vtcon_port {int vtcport_flags; } ;
struct tty {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int VTCON_BULK_BUFSZ ; 
 int VTCON_PORT_FLAG_GONE ; 
 struct vtcon_port* FUNC0 (struct tty*) ; 
 int FUNC1 (struct tty*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vtcon_port*,char*,int) ; 

__attribute__((used)) static void
FUNC3(struct tty *tp)
{
	struct vtcon_port *port;
	char buf[VTCON_BULK_BUFSZ];
	int len;

	port = FUNC0(tp);

	if (port->vtcport_flags & VTCON_PORT_FLAG_GONE)
		return;

	while ((len = FUNC1(tp, buf, sizeof(buf))) != 0)
		FUNC2(port, buf, len);
}
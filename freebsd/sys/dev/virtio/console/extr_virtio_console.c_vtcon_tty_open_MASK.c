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

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  VIRTIO_CONSOLE_PORT_OPEN ; 
 int VTCON_PORT_FLAG_GONE ; 
 struct vtcon_port* FUNC0 (struct tty*) ; 
 int /*<<< orphan*/  FUNC1 (struct vtcon_port*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(struct tty *tp)
{
	struct vtcon_port *port;

	port = FUNC0(tp);

	if (port->vtcport_flags & VTCON_PORT_FLAG_GONE)
		return (ENXIO);

	FUNC1(port, VIRTIO_CONSOLE_PORT_OPEN, 1);

	return (0);
}
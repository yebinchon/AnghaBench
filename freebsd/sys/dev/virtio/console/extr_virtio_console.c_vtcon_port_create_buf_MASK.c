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
struct vtcon_port {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  VTCON_BULK_BUFSZ ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct vtcon_port*,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct vtcon_port *port)
{
	void *buf;
	int error;

	buf = FUNC1(VTCON_BULK_BUFSZ, M_DEVBUF, M_ZERO | M_NOWAIT);
	if (buf == NULL)
		return (ENOMEM);

	error = FUNC2(port, buf, VTCON_BULK_BUFSZ);
	if (error)
		FUNC0(buf, M_DEVBUF);

	return (error);
}
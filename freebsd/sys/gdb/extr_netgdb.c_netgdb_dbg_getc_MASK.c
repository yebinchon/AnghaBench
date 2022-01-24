#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int (* gdb_getc ) () ;} ;
struct TYPE_5__ {int* s_buf; } ;

/* Variables and functions */
 int FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  netgdb_conn ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_4__* netgdb_prev_dbgport ; 
 size_t netgdb_rx_off ; 
 TYPE_1__ netgdb_rxsb ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 size_t FUNC4 (TYPE_1__*) ; 
 int FUNC5 () ; 

__attribute__((used)) static int
FUNC6(void)
{
	int c;

	while (true) {
		/* Pull bytes off any currently cached packet first. */
		if (netgdb_rx_off < FUNC4(&netgdb_rxsb)) {
			c = netgdb_rxsb.s_buf[netgdb_rx_off];
			netgdb_rx_off++;
			break;
		}

		/* Reached EOF?  Reuse buffer. */
		FUNC3(&netgdb_rxsb);
		netgdb_rx_off = 0;

		/* Check for CTRL-C on console/serial, if any. */
		if (netgdb_prev_dbgport != NULL) {
			c = netgdb_prev_dbgport->gdb_getc();
			if (c == FUNC0('C'))
				break;
		}

		FUNC1(netgdb_conn);
	}

	if (c == FUNC0('C')) {
		FUNC2();
		/* Caller gdb_getc() will print that we got ^C. */
	}
	return (c);
}
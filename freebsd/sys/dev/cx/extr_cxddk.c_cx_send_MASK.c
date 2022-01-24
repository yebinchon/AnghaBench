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
typedef  int /*<<< orphan*/  port_t ;
struct TYPE_3__ {int num; unsigned char* atbuf; void** attach; unsigned char* btbuf; scalar_t__ mode; int /*<<< orphan*/  port; } ;
typedef  TYPE_1__ cx_chan_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int BSTS_EOFR ; 
 int BSTS_INTR ; 
 int BSTS_OWN24 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int DMABSTS_NTBUF ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int IER_RXD ; 
 int IER_TXD ; 
 int IER_TXMPTY ; 
 scalar_t__ M_ASYNC ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC11 (cx_chan_t *c, char *data, int len,
	void *attachment)
{
	unsigned char *buf;
	port_t cnt_port, sts_port;
	void **attp;

	/* Set the current channel number. */
	FUNC9 (FUNC4(c->port), c->num & 3);

	/* Determine the buffer order. */
	if (FUNC7 (FUNC5(c->port)) & DMABSTS_NTBUF) {
		if (FUNC7 (FUNC3(c->port)) & BSTS_OWN24) {
			buf	 = c->atbuf;
			cnt_port = FUNC0(c->port);
			sts_port = FUNC1(c->port);
			attp	 = &c->attach[0];
		} else {
			buf	 = c->btbuf;
			cnt_port = FUNC2(c->port);
			sts_port = FUNC3(c->port);
			attp	 = &c->attach[1];
		}
	} else {
		if (FUNC7 (FUNC1(c->port)) & BSTS_OWN24) {
			buf	 = c->btbuf;
			cnt_port = FUNC2(c->port);
			sts_port = FUNC3(c->port);
			attp	 = &c->attach[1];
		} else {
			buf	 = c->atbuf;
			cnt_port = FUNC0(c->port);
			sts_port = FUNC1(c->port);
			attp	 = &c->attach[0];
		}
	}
	/* Is it busy? */
	if (FUNC7 (sts_port) & BSTS_OWN24)
		return -1;

	FUNC8 (buf, data, len);
	*attp = attachment;

	/* Start transmitter. */
	FUNC10 (cnt_port, len);
	FUNC9 (sts_port, BSTS_EOFR | BSTS_INTR | BSTS_OWN24);

	/* Enable TXMPTY interrupt,
	 * to catch the case when the second buffer is empty. */
	if (c->mode != M_ASYNC) {
		if ((FUNC7(FUNC1(c->port)) & BSTS_OWN24) &&
		    (FUNC7(FUNC3(c->port)) & BSTS_OWN24)) {
			FUNC9 (FUNC6(c->port), IER_RXD | IER_TXD | IER_TXMPTY);
		} else
			FUNC9 (FUNC6(c->port), IER_RXD | IER_TXD);
	}
	return 0;
}
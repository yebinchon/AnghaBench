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
struct cuse_client {int cflags; int /*<<< orphan*/  server; } ;
struct cdev {int dummy; } ;

/* Variables and functions */
 int CUSE_CLI_KNOTE_HAS_READ ; 
 int CUSE_CLI_KNOTE_HAS_WRITE ; 
 int CUSE_CLI_KNOTE_NEED_READ ; 
 int CUSE_CLI_KNOTE_NEED_WRITE ; 
 int POLLIN ; 
 int POLLOUT ; 
 int FUNC0 (struct cdev*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void
FUNC4(struct cdev *dev, struct cuse_client *pcc)
{
	int temp;

	FUNC1();
	temp = (pcc->cflags & (CUSE_CLI_KNOTE_HAS_READ |
	    CUSE_CLI_KNOTE_HAS_WRITE));
	pcc->cflags &= ~(CUSE_CLI_KNOTE_NEED_READ |
	    CUSE_CLI_KNOTE_NEED_WRITE);
	FUNC3();

	if (temp != 0) {
		/* get the latest polling state from the server */
		temp = FUNC0(dev, POLLIN | POLLOUT, NULL);

		if (temp & (POLLIN | POLLOUT)) {
			FUNC1();
			if (temp & POLLIN)
				pcc->cflags |= CUSE_CLI_KNOTE_NEED_READ;
			if (temp & POLLOUT)
				pcc->cflags |= CUSE_CLI_KNOTE_NEED_WRITE;

			/* make sure the "knote" gets woken up */
			FUNC2(pcc->server);
			FUNC3();
		}
	}
}
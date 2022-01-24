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
struct user_evtchn {int enabled; int /*<<< orphan*/  port; } ;
struct uio {int uio_resid; } ;
struct per_user_data {int /*<<< orphan*/  bind_mutex; } ;
struct cdev {int dummy; } ;
typedef  int /*<<< orphan*/  evtchn_port_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  M_EVTCHN ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int PAGE_SIZE ; 
 int FUNC0 (void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct user_evtchn* FUNC2 (struct per_user_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int,struct uio*) ; 

__attribute__((used)) static int
FUNC8(struct cdev *dev, struct uio *uio, int ioflag)
{
	int error, i, count;
	evtchn_port_t *kbuf;
	struct per_user_data *u;

	error = FUNC0((void **)&u);
	if (error != 0)
		return (EINVAL);

	kbuf = FUNC4(PAGE_SIZE, M_EVTCHN, M_WAITOK);

	count = uio->uio_resid;
	/* Whole number of ports. */
	count &= ~(sizeof(evtchn_port_t)-1);

	error = 0;
	if (count == 0)
		goto out;

	if (count > PAGE_SIZE)
		count = PAGE_SIZE;

	error = FUNC7(kbuf, count, uio);
	if (error != 0)
		goto out;

	FUNC5(&u->bind_mutex);

	for (i = 0; i < (count/sizeof(evtchn_port_t)); i++) {
		evtchn_port_t port = kbuf[i];
		struct user_evtchn *evtchn;

		evtchn = FUNC2(u, port);
		if (evtchn && !evtchn->enabled) {
			evtchn->enabled = true;
			FUNC1(evtchn->port);
		}
	}

	FUNC6(&u->bind_mutex);
	error = 0;

out:
	FUNC3(kbuf, M_EVTCHN);
	return (error);
}
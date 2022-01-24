#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct uio {int uio_resid; TYPE_1__* uio_td; } ;
struct input_event {int dummy; } ;
struct evdev_client {int ec_blocked; size_t ec_buffer_head; int ec_buffer_size; int /*<<< orphan*/ * ec_buffer; int /*<<< orphan*/  ec_buffer_mtx; scalar_t__ ec_revoked; } ;
struct cdev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  td_tid; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (struct evdev_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct evdev_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct evdev_client*) ; 
 int EWOULDBLOCK ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  PCATCH ; 
 int /*<<< orphan*/  FUNC3 (struct evdev_client*,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (void**) ; 
 int /*<<< orphan*/  FUNC5 (struct input_event*,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (struct evdev_client*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct input_event*,int,struct uio*) ; 

__attribute__((used)) static int
FUNC8(struct cdev *dev, struct uio *uio, int ioflag)
{
	struct evdev_client *client;
	struct input_event event;
	int ret = 0;
	int remaining;

	ret = FUNC4((void **)&client);
	if (ret != 0)
		return (ret);

	FUNC3(client, "read %zd bytes by thread %d", uio->uio_resid,
	    uio->uio_td->td_tid);

	if (client->ec_revoked)
		return (ENODEV);

	/* Zero-sized reads are allowed for error checking */
	if (uio->uio_resid != 0 && uio->uio_resid < sizeof(struct input_event))
		return (EINVAL);

	remaining = uio->uio_resid / sizeof(struct input_event);

	FUNC1(client);

	if (FUNC0(client)) {
		if (ioflag & O_NONBLOCK)
			ret = EWOULDBLOCK;
		else {
			if (remaining != 0) {
				client->ec_blocked = true;
				ret = FUNC6(client, &client->ec_buffer_mtx,
				    PCATCH, "evread", 0);
			}
		}
	}

	while (ret == 0 && !FUNC0(client) && remaining > 0) {
		FUNC5(&event, &client->ec_buffer[client->ec_buffer_head],
		    sizeof(struct input_event));
		client->ec_buffer_head =
		    (client->ec_buffer_head + 1) % client->ec_buffer_size;
		remaining--;

		FUNC2(client);
		ret = FUNC7(&event, sizeof(struct input_event), uio);
		FUNC1(client);
	}

	FUNC2(client);

	return (ret);
}
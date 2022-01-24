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
struct knote {int kn_data; int /*<<< orphan*/  kn_flags; scalar_t__ kn_hook; } ;
struct input_event {int dummy; } ;
struct evdev_client {scalar_t__ ec_revoked; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evdev_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct evdev_client*) ; 
 int FUNC2 (struct evdev_client*) ; 
 int /*<<< orphan*/  EV_EOF ; 

__attribute__((used)) static int
FUNC3(struct knote *kn, long hint)
{
	struct evdev_client *client;
	int ret;

	client = (struct evdev_client *)kn->kn_hook;

	FUNC1(client);

	if (client->ec_revoked) {
		kn->kn_flags |= EV_EOF;
		ret = 1;
	} else {
		kn->kn_data = FUNC2(client) *
		    sizeof(struct input_event);
		ret = !FUNC0(client);
	}
	return (ret);
}
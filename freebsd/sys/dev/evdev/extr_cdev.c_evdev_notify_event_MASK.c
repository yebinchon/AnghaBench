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
struct TYPE_2__ {int /*<<< orphan*/  si_note; } ;
struct evdev_client {int ec_blocked; int ec_selected; int /*<<< orphan*/ * ec_sigio; scalar_t__ ec_async; TYPE_1__ ec_selp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evdev_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGIO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct evdev_client*) ; 

void
FUNC5(struct evdev_client *client)
{

	FUNC0(client);

	if (client->ec_blocked) {
		client->ec_blocked = false;
		FUNC4(client);
	}
	if (client->ec_selected) {
		client->ec_selected = false;
		FUNC3(&client->ec_selp);
	}
	FUNC1(&client->ec_selp.si_note, 0);

	if (client->ec_async && client->ec_sigio != NULL)
		FUNC2(&client->ec_sigio, SIGIO, 0);
}
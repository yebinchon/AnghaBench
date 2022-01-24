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
struct evdev_client {int /*<<< orphan*/  ec_buffer_mtx; int /*<<< orphan*/  ec_sigio; TYPE_1__ ec_selp; int /*<<< orphan*/  ec_evdev; int /*<<< orphan*/  ec_revoked; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_EVDEV ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct evdev_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct evdev_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC9(void *data)
{
	struct evdev_client *client = (struct evdev_client *)data;

	FUNC0(client->ec_evdev);
	if (!client->ec_revoked)
		FUNC2(client->ec_evdev, client);
	FUNC1(client->ec_evdev);

	FUNC5(&client->ec_selp.si_note, 0);
	FUNC8(&client->ec_selp);
	FUNC6(&client->ec_selp.si_note);
	FUNC4(&client->ec_sigio);
	FUNC7(&client->ec_buffer_mtx);
	FUNC3(client, M_EVDEV);
}
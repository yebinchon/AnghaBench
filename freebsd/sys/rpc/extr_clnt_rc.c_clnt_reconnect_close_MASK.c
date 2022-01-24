#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct rc_data {int /*<<< orphan*/  rc_lock; TYPE_1__* rc_client; scalar_t__ rc_closed; } ;
struct TYPE_5__ {scalar_t__ cl_private; } ;
typedef  TYPE_1__ CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(CLIENT *cl)
{
	struct rc_data *rc = (struct rc_data *)cl->cl_private;
	CLIENT *client;

	FUNC2(&rc->rc_lock);

	if (rc->rc_closed) {
		FUNC3(&rc->rc_lock);
		return;
	}

	rc->rc_closed = TRUE;
	client = rc->rc_client;
	rc->rc_client = NULL;

	FUNC3(&rc->rc_lock);

	if (client) {
		FUNC0(client);
		FUNC1(client);
	}
}
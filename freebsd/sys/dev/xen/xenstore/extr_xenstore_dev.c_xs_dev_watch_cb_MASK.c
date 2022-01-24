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
struct xsd_sockmsg {size_t len; scalar_t__ tx_id; scalar_t__ req_id; int /*<<< orphan*/  type; } ;
struct xs_watch {scalar_t__ callback_data; } ;
struct xs_dev_watch {char const* token; TYPE_1__* user; } ;
typedef  int /*<<< orphan*/  msg ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  M_XENSTORE ; 
 int /*<<< orphan*/  XS_WATCH_EVENT ; 
 size_t XS_WATCH_PATH ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 size_t FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,int) ; 

__attribute__((used)) static void
FUNC7(struct xs_watch *watch, const char **vec, unsigned int len)
{
	struct xs_dev_watch *dwatch;
	struct xsd_sockmsg msg;
	char *payload;

	dwatch = (struct xs_dev_watch *)watch->callback_data;
	msg.type = XS_WATCH_EVENT;
	msg.req_id = msg.tx_id = 0;
	msg.len = FUNC5(vec[XS_WATCH_PATH]) + FUNC5(dwatch->token) + 2;

	payload = FUNC1(msg.len, M_XENSTORE, M_WAITOK);
	FUNC4(payload, vec[XS_WATCH_PATH]);
	FUNC4(&payload[FUNC5(vec[XS_WATCH_PATH]) + 1], dwatch->token);
	FUNC2(&dwatch->user->lock);
	FUNC6(dwatch->user, (char *)&msg, sizeof(msg));
	FUNC6(dwatch->user, payload, msg.len);
	FUNC3(&dwatch->user->lock);
	FUNC0(payload, M_XENSTORE);
}
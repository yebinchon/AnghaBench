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
struct xsd_sockmsg {int req_id; int tx_id; int len; int /*<<< orphan*/  type; } ;
struct xs_dev_data {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  XS_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char const*) ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct xs_dev_data*,char const*,int) ; 

__attribute__((used)) static void
FUNC6(struct xs_dev_data *u, int error, int req_id, int tx_id)
{
	struct xsd_sockmsg msg;
	const char *payload;

	msg.type = XS_ERROR;
	msg.req_id = req_id;
	msg.tx_id = tx_id;
	payload = NULL;


	payload = FUNC4(error);
	if (payload == NULL)
		payload = FUNC4(EINVAL);
	FUNC0(payload != NULL, ("Unable to find string for EINVAL errno"));

	msg.len = FUNC3(payload) + 1;

	FUNC1(&u->lock);
	FUNC5(u, (char *)&msg, sizeof(msg));
	FUNC5(u, payload, msg.len);
	FUNC2(&u->lock);
}
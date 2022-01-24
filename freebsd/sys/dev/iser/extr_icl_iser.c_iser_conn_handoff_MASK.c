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
struct iser_conn {scalar_t__ state; int handoff_done; int /*<<< orphan*/  state_mutex; int /*<<< orphan*/  min_posted_rx; } ;
struct icl_conn {int /*<<< orphan*/  ic_maxtags; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ ISER_CONN_UP ; 
 int /*<<< orphan*/  FUNC0 (char*,struct iser_conn*,scalar_t__) ; 
 struct iser_conn* FUNC1 (struct icl_conn*) ; 
 int FUNC2 (struct iser_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iser_conn*) ; 
 int FUNC4 (struct iser_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int
FUNC7(struct icl_conn *ic, int fd)
{
	struct iser_conn *iser_conn = FUNC1(ic);
	int error = 0;

	FUNC5(&iser_conn->state_mutex);
	if (iser_conn->state != ISER_CONN_UP) {
		error = EINVAL;
		FUNC0("iser_conn %p state is %d, teardown started\n",
			 iser_conn, iser_conn->state);
		goto out;
	}

	error = FUNC2(iser_conn, ic->ic_maxtags);
	if (error)
		goto out;

	error = FUNC4(iser_conn, iser_conn->min_posted_rx);
	if (error)
		goto post_error;

	iser_conn->handoff_done = true;

	FUNC6(&iser_conn->state_mutex);
	return (error);

post_error:
	FUNC3(iser_conn);
out:
	FUNC6(&iser_conn->state_mutex);
	return (error);

}
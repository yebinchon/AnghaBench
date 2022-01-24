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
struct iser_conn {scalar_t__ state; int /*<<< orphan*/  state_mutex; int /*<<< orphan*/  up_cv; } ;
struct icl_conn {int dummy; } ;

/* Variables and functions */
 scalar_t__ ISER_CONN_PENDING ; 
 int /*<<< orphan*/  FUNC0 (char*,struct iser_conn*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct iser_conn* FUNC2 (struct icl_conn*) ; 
 int /*<<< orphan*/  FUNC3 (struct iser_conn*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(struct icl_conn *ic)
{
	struct iser_conn *iser_conn = FUNC2(ic);

	FUNC0("closing conn %p", iser_conn);

	FUNC4(&iser_conn->state_mutex);
	/*
	 * In case iser connection is waiting on conditional variable
	 * (state PENDING) and we try to close it before connection establishment,
	 * we need to signal it to continue releasing connection properly.
	 */
	if (!FUNC3(iser_conn) && iser_conn->state == ISER_CONN_PENDING)
		FUNC1(&iser_conn->up_cv);
	FUNC5(&iser_conn->state_mutex);

}
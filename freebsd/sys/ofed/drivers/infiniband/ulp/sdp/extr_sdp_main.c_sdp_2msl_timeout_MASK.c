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
struct sdp_sock {int flags; int /*<<< orphan*/  shutdown_task; int /*<<< orphan*/  keep2msl; } ;

/* Variables and functions */
 int SDP_TIMEWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_thread ; 

__attribute__((used)) static void
FUNC4(void *data)
{
	struct sdp_sock *ssk;

	ssk = data;
	/* Callout canceled. */
        if (!FUNC1(&ssk->keep2msl))
		goto out;
        FUNC2(&ssk->keep2msl);
	/* Should be impossible, defensive programming. */
	if ((ssk->flags & SDP_TIMEWAIT) == 0)
		goto out;
	FUNC3(taskqueue_thread, &ssk->shutdown_task);
out:
	FUNC0(ssk);
	return;
}
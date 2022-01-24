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
struct nvme_completion_poll_status {int /*<<< orphan*/  done; int /*<<< orphan*/  cpl; } ;
struct nvme_completion {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct nvme_completion const*,int) ; 

void
FUNC2(void *arg, const struct nvme_completion *cpl)
{
	struct nvme_completion_poll_status	*status = arg;

	/*
	 * Copy status into the argument passed by the caller, so that
	 *  the caller can check the status to determine if the
	 *  the request passed or failed.
	 */
	FUNC1(&status->cpl, cpl, sizeof(*cpl));
	FUNC0(&status->done, 1);
}
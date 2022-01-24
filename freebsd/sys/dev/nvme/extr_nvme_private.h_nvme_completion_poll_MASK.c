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
struct nvme_completion_poll_status {int /*<<< orphan*/  done; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static __inline
void
FUNC3(struct nvme_completion_poll_status *status)
{
	int sanity = hz * 1;

	while (!FUNC0(&status->done) && --sanity > 0)
		FUNC2("nvme", 1);
	if (sanity <= 0)
		FUNC1("NVME polled command failed to complete within 1s.");
}
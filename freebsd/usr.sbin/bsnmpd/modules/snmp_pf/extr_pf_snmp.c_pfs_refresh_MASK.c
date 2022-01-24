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
struct pf_status {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCGETSTATUS ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  dev ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ pf_tick ; 
 int /*<<< orphan*/  pfs ; 
 scalar_t__ started ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ this_tick ; 

__attribute__((used)) static int
FUNC4(void)
{
	if (started && this_tick <= pf_tick)
		return (0);

	FUNC0(&pfs, sizeof(struct pf_status));

	if (FUNC1(dev, DIOCGETSTATUS, &pfs)) {
		FUNC3(LOG_ERR, "pfs_refresh(): ioctl(): %s",
		    FUNC2(errno));
		return (-1);
	}

	pf_tick = this_tick;
	return (0);
}
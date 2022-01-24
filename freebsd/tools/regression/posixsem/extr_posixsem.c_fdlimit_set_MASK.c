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
struct rlimit {int rlim_cur; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RLIMIT_NOFILE ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct rlimit*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct rlimit*) ; 

__attribute__((used)) static int
FUNC3(void *arg)
{
	struct rlimit rlim;
	int max;

	max = (intptr_t)arg;
	if (FUNC1(RLIMIT_NOFILE, &rlim) < 0)
		return (FUNC0(3, errno));
	rlim.rlim_cur = max;
	if (FUNC2(RLIMIT_NOFILE, &rlim) < 0)
		return (FUNC0(4, errno));
	return (0);
}
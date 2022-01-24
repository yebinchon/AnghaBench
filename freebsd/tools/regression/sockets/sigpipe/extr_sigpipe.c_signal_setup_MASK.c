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

/* Variables and functions */
 int /*<<< orphan*/  SIGPIPE ; 
 scalar_t__ SIG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  signal_handler ; 
 scalar_t__ signaled ; 

__attribute__((used)) static void
FUNC2(const char *testname)
{

	signaled = 0;
	if (FUNC1(SIGPIPE, signal_handler) == SIG_ERR)
		FUNC0(-1, "%s: signal(SIGPIPE)", testname);
}
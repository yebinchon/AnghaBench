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
 int /*<<< orphan*/  SHUT_WR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int) ; 

__attribute__((used)) static void
FUNC7(const char *testname, int sock1, int sock2)
{

	if (FUNC4(sock2, SHUT_WR) < 0)
		FUNC1(-1, "%s: shutdown", testname);
	FUNC5(testname);
	FUNC6(testname, sock2);
	if (!FUNC3())
		FUNC2(-1, "%s: write: didn't receive SIGPIPE", testname);
	FUNC0(sock1);
	FUNC0(sock2);
}
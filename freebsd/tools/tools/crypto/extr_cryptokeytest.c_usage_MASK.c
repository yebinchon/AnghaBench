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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(const char* cmd)
{
	FUNC1("usage: %s [-d dev] [-v] [count]\n", cmd);
	FUNC1("count is the number of bignum ops to do\n");
	FUNC1("\n");
	FUNC1("-d use specific device\n");
	FUNC1("-v be verbose\n");
	FUNC0(-1);
}
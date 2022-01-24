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
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  test ; 

__attribute__((used)) static void
FUNC2(int s)
{

	if (FUNC1(s, F_SETFL, O_NONBLOCK) < 0)
		FUNC0(-1, "%s: fcntl(F_SETFL, O_NONBLOCK)", test);
}
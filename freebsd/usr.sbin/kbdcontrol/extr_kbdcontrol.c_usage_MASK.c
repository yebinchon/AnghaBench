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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2(void)
{
	FUNC1(stderr, "%s\n%s\n%s\n",
"usage: kbdcontrol [-dFKix] [-A name] [-a name] [-b duration.pitch | [quiet.]belltype]",
"                  [-r delay.repeat | speed] [-l mapfile] [-f # string]",
"                  [-k device] [-L mapfile] [-P path]");
	FUNC0(1);
}
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
 int found_err ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,char const*,...) ; 
 int line_no ; 
 scalar_t__ output ; 
 scalar_t__ stderr ; 
 scalar_t__ stdout ; 

void
FUNC1(int level, const char *msg, int a, int b)
{
    if (level)
	found_err = 1;
    if (output == stdout) {
	FUNC0(stdout, "/**INDENT** %s@%d: ", level == 0 ? "Warning" : "Error", line_no);
	FUNC0(stdout, msg, a, b);
	FUNC0(stdout, " */\n");
    }
    else {
	FUNC0(stderr, "%s@%d: ", level == 0 ? "Warning" : "Error", line_no);
	FUNC0(stderr, msg, a, b);
	FUNC0(stderr, "\n");
    }
}
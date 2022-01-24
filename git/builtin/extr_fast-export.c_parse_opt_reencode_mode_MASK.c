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
struct option {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REENCODE_ABORT ; 
 int /*<<< orphan*/  REENCODE_NO ; 
 int /*<<< orphan*/  REENCODE_YES ; 
 int FUNC0 (char*,char const*) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  reencode_mode ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 

__attribute__((used)) static int FUNC3(const struct option *opt,
				   const char *arg, int unset)
{
	if (unset) {
		reencode_mode = REENCODE_ABORT;
		return 0;
	}

	switch (FUNC1(arg)) {
	case 0:
		reencode_mode = REENCODE_NO;
		break;
	case 1:
		reencode_mode = REENCODE_YES;
		break;
	default:
		if (!FUNC2(arg, "abort"))
			reencode_mode = REENCODE_ABORT;
		else
			return FUNC0("Unknown reencoding mode: %s", arg);
	}

	return 0;
}
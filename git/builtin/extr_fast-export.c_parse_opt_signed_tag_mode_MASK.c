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
 int /*<<< orphan*/  SIGNED_TAG_ABORT ; 
 int /*<<< orphan*/  STRIP ; 
 int /*<<< orphan*/  VERBATIM ; 
 int /*<<< orphan*/  WARN ; 
 int /*<<< orphan*/  WARN_STRIP ; 
 int FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  signed_tag_mode ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 

__attribute__((used)) static int FUNC2(const struct option *opt,
				     const char *arg, int unset)
{
	if (unset || !FUNC1(arg, "abort"))
		signed_tag_mode = SIGNED_TAG_ABORT;
	else if (!FUNC1(arg, "verbatim") || !FUNC1(arg, "ignore"))
		signed_tag_mode = VERBATIM;
	else if (!FUNC1(arg, "warn"))
		signed_tag_mode = WARN;
	else if (!FUNC1(arg, "warn-strip"))
		signed_tag_mode = WARN_STRIP;
	else if (!FUNC1(arg, "strip"))
		signed_tag_mode = STRIP;
	else
		return FUNC0("Unknown signed-tags mode: %s", arg);
	return 0;
}
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
 int /*<<< orphan*/  DROP ; 
 int /*<<< orphan*/  REWRITE ; 
 int /*<<< orphan*/  TAG_FILTERING_ABORT ; 
 int FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  tag_of_filtered_mode ; 

__attribute__((used)) static int FUNC2(const struct option *opt,
					  const char *arg, int unset)
{
	if (unset || !FUNC1(arg, "abort"))
		tag_of_filtered_mode = TAG_FILTERING_ABORT;
	else if (!FUNC1(arg, "drop"))
		tag_of_filtered_mode = DROP;
	else if (!FUNC1(arg, "rewrite"))
		tag_of_filtered_mode = REWRITE;
	else
		return FUNC0("Unknown tag-of-filtered mode: %s", arg);
	return 0;
}
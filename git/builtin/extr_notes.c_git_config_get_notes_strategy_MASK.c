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
typedef  enum notes_merge_strategy { ____Placeholder_notes_merge_strategy } notes_merge_strategy ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const*,char**) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (char*,int*) ; 

__attribute__((used)) static int FUNC5(const char *key,
					 enum notes_merge_strategy *strategy)
{
	char *value;

	if (FUNC2(key, &value))
		return 1;
	if (FUNC4(value, strategy))
		FUNC3(key, FUNC0("unknown notes merge strategy %s"), value);

	FUNC1(value);
	return 0;
}
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
struct attr_check {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,struct attr_check*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,struct attr_check*) ; 
 int /*<<< orphan*/  FUNC3 (struct attr_check*,char const*) ; 
 char* FUNC4 (char const*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  the_index ; 

__attribute__((used)) static void FUNC6(const char *prefix,
		       struct attr_check *check,
		       int collect_all,
		       const char *file)
{
	char *full_path =
		FUNC4(prefix, prefix ? FUNC5(prefix) : 0, file);

	if (collect_all) {
		FUNC1(&the_index, full_path, check);
	} else {
		FUNC2(&the_index, full_path, check);
	}
	FUNC3(check, file);

	FUNC0(full_path);
}
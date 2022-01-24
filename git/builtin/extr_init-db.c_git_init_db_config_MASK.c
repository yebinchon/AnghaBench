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
 int FUNC0 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  init_db_template_dir ; 
 int FUNC1 (char const*,char const*,void*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 

__attribute__((used)) static int FUNC4(const char *k, const char *v, void *cb)
{
	if (!FUNC3(k, "init.templatedir"))
		return FUNC0(&init_db_template_dir, k, v);

	if (FUNC2(k, "core."))
		return FUNC1(k, v, cb);

	return 0;
}
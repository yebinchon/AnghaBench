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
struct config_include_data {int (* fn ) (char const*,char const*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  opts; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int FUNC0 (char const*,struct config_include_data*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,char const**,int*,char const**) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 int FUNC4 (char const*,char const*,int /*<<< orphan*/ ) ; 

int FUNC5(const char *var, const char *value, void *data)
{
	struct config_include_data *inc = data;
	const char *cond, *key;
	int cond_len;
	int ret;

	/*
	 * Pass along all values, including "include" directives; this makes it
	 * possible to query information on the includes themselves.
	 */
	ret = inc->fn(var, value, inc->data);
	if (ret < 0)
		return ret;

	if (!FUNC3(var, "include.path"))
		ret = FUNC0(value, inc);

	if (!FUNC2(var, "includeif", &cond, &cond_len, &key) &&
	    (cond && FUNC1(inc->opts, cond, cond_len)) &&
	    !FUNC3(key, "path"))
		ret = FUNC0(value, inc);

	return ret;
}
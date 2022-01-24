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
struct strbuf {int len; char* buf; } ;
typedef  scalar_t__ (* config_fn_t ) (char*,char const*,void*) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf**) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,int) ; 
 struct strbuf** FUNC6 (char const*,char,int) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 

int FUNC8(const char *text,
			       config_fn_t fn, void *data)
{
	const char *value;
	char *canonical_name;
	struct strbuf **pair;
	int ret;

	pair = FUNC6(text, '=', 2);
	if (!pair[0])
		return FUNC1(FUNC0("bogus config parameter: %s"), text);

	if (pair[0]->len && pair[0]->buf[pair[0]->len - 1] == '=') {
		FUNC5(pair[0], pair[0]->len - 1);
		value = pair[1] ? pair[1]->buf : "";
	} else {
		value = NULL;
	}

	FUNC7(pair[0]);
	if (!pair[0]->len) {
		FUNC4(pair);
		return FUNC1(FUNC0("bogus config parameter: %s"), text);
	}

	if (FUNC3(pair[0]->buf, &canonical_name, NULL)) {
		ret = -1;
	} else {
		ret = (fn(canonical_name, value, data) < 0) ? -1 : 0;
		FUNC2(canonical_name);
	}
	FUNC4(pair);
	return ret;
}
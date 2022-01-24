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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct object_id {int dummy; } ;
typedef  scalar_t__ (* each_tag_name_fn ) (char const*,int /*<<< orphan*/ ,struct object_id*,void const*) ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct object_id*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 

__attribute__((used)) static int FUNC6(const char **argv, each_tag_name_fn fn,
			     const void *cb_data)
{
	const char **p;
	struct strbuf ref = STRBUF_INIT;
	int had_error = 0;
	struct object_id oid;

	for (p = argv; *p; p++) {
		FUNC5(&ref);
		FUNC3(&ref, "refs/tags/%s", *p);
		if (FUNC2(ref.buf, &oid)) {
			FUNC1(FUNC0("tag '%s' not found."), *p);
			had_error = 1;
			continue;
		}
		if (fn(*p, ref.buf, &oid, cb_data))
			had_error = 1;
	}
	FUNC4(&ref);
	return had_error;
}
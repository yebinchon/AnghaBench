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
struct string_list_item {int /*<<< orphan*/ * util; } ;
struct strbuf {int /*<<< orphan*/  buf; } ;
struct rename_info {int /*<<< orphan*/  remote_branches; int /*<<< orphan*/  old_name; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int REF_ISSYMREF ; 
 int /*<<< orphan*/  RESOLVE_REF_READING ; 
 struct strbuf STRBUF_INIT ; 
 char* FUNC0 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 
 struct string_list_item* FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC5 (char const*) ; 

__attribute__((used)) static int FUNC6(const char *refname,
	const struct object_id *oid, int flags, void *cb_data)
{
	struct rename_info *rename = cb_data;
	struct strbuf buf = STRBUF_INIT;
	struct string_list_item *item;
	int flag;
	const char *symref;

	FUNC2(&buf, "refs/remotes/%s/", rename->old_name);
	if (FUNC1(refname, buf.buf)) {
		item = FUNC4(rename->remote_branches, refname);
		symref = FUNC0(refname, RESOLVE_REF_READING,
					    NULL, &flag);
		if (symref && (flag & REF_ISSYMREF))
			item->util = FUNC5(symref);
		else
			item->util = NULL;
	}
	FUNC3(&buf);

	return 0;
}
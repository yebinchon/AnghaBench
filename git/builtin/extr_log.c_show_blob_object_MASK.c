#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  allow_textconv; int /*<<< orphan*/  textconv_set_via_cmdline; } ;
struct TYPE_4__ {TYPE_1__ flags; int /*<<< orphan*/  file; } ;
struct rev_info {TYPE_2__ diffopt; } ;
struct object_id {int dummy; } ;
struct object_context {int /*<<< orphan*/  path; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  GET_OID_RECORD_PATH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,struct object_id*,struct object_context*) ; 
 int FUNC5 (int,struct object_id const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct object_id*,int,char**,unsigned long*) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC7 (int,char*,unsigned long) ; 

__attribute__((used)) static int FUNC8(const struct object_id *oid, struct rev_info *rev, const char *obj_name)
{
	struct object_id oidc;
	struct object_context obj_context;
	char *buf;
	unsigned long size;

	FUNC2(rev->diffopt.file);
	if (!rev->diffopt.flags.textconv_set_via_cmdline ||
	    !rev->diffopt.flags.allow_textconv)
		return FUNC5(1, oid, NULL, 0);

	if (FUNC4(the_repository, obj_name,
				 GET_OID_RECORD_PATH,
				 &oidc, &obj_context))
		FUNC1(FUNC0("not a valid object name %s"), obj_name);
	if (!obj_context.path ||
	    !FUNC6(the_repository, obj_context.path,
			     obj_context.mode, &oidc, 1, &buf, &size)) {
		FUNC3(obj_context.path);
		return FUNC5(1, oid, NULL, 0);
	}

	if (!buf)
		FUNC1(FUNC0("git show %s: bad file"), obj_name);

	FUNC7(1, buf, size);
	FUNC3(obj_context.path);
	return 0;
}
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
struct strbuf {int dummy; } ;
struct object_id {int dummy; } ;
struct object {struct object_id oid; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_ABBREV ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 char* FUNC1 (struct object_id const*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (struct object const*,struct strbuf*) ; 
 char* FUNC3 (struct object_id const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 

__attribute__((used)) static void FUNC6(const struct object *obj,
		      const char *caller_name,
		      int always, int allow_undefined, int name_only)
{
	const char *name;
	const struct object_id *oid = &obj->oid;
	struct strbuf buf = STRBUF_INIT;

	if (!name_only)
		FUNC4("%s ", caller_name ? caller_name : FUNC3(oid));
	name = FUNC2(obj, &buf);
	if (name)
		FUNC4("%s\n", name);
	else if (allow_undefined)
		FUNC4("undefined\n");
	else if (always)
		FUNC4("%s\n", FUNC1(oid, DEFAULT_ABBREV));
	else
		FUNC0("cannot describe '%s'", FUNC3(oid));
	FUNC5(&buf);
}
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
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct object_id const*) ; 
 char* FUNC2 (struct object_id const*,int*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,int) ; 

__attribute__((used)) static int FUNC6(struct strbuf *buf, const struct object_id *oid, unsigned mode)
{
	if (FUNC0(mode)) {
		FUNC5(buf, 100);
		FUNC3(buf, "Subproject commit %s\n", FUNC1(oid));
	} else {
		enum object_type type;
		unsigned long sz;
		char *result;

		result = FUNC2(oid, &type, &sz);
		if (!result)
			return -1;
		/* XXX read_sha1_file NUL-terminates */
		FUNC4(buf, result, sz, sz + 1);
	}
	return 0;
}
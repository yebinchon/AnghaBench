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
struct object_id {int dummy; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 int FUNC0 (struct object_id const*,void*,unsigned long,char const*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 struct object_id* FUNC2 (int /*<<< orphan*/ ,struct object_id const*) ; 
 void* FUNC3 (struct object_id const*,int*,unsigned long*) ; 
 int /*<<< orphan*/  the_repository ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static int FUNC5(const struct object_id *oid, const char *expected_type)
{
	int ret = -1;
	enum object_type type;
	unsigned long size;
	void *buffer = FUNC3(oid, &type, &size);
	const struct object_id *repl = FUNC2(the_repository, oid);

	if (buffer) {
		if (type == FUNC4(expected_type))
			ret = FUNC0(repl, buffer, size, expected_type);
		FUNC1(buffer);
	}
	return ret;
}
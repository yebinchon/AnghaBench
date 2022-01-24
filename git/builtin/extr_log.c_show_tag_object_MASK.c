#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  file; } ;
struct rev_info {TYPE_1__ diffopt; } ;
struct object_id {int dummy; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 int OBJ_TAG ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned long,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct object_id const*) ; 
 char* FUNC6 (struct object_id const*,int*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,struct rev_info*) ; 
 scalar_t__ FUNC8 (char*,char*,char const**) ; 

__attribute__((used)) static int FUNC9(const struct object_id *oid, struct rev_info *rev)
{
	unsigned long size;
	enum object_type type;
	char *buf = FUNC6(oid, &type, &size);
	int offset = 0;

	if (!buf)
		return FUNC2(FUNC0("could not read object %s"), FUNC5(oid));

	FUNC1(type == OBJ_TAG);
	while (offset < size && buf[offset] != '\n') {
		int new_offset = offset + 1;
		const char *ident;
		while (new_offset < size && buf[new_offset++] != '\n')
			; /* do nothing */
		if (FUNC8(buf + offset, "tagger ", &ident))
			FUNC7(ident, rev);
		offset = new_offset;
	}

	if (offset < size)
		FUNC4(buf + offset, size - offset, 1, rev->diffopt.file);
	FUNC3(buf);
	return 0;
}
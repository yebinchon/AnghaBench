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
typedef  enum object_type { ____Placeholder_object_type } object_type ;
struct TYPE_2__ {int /*<<< orphan*/  offset; } ;

/* Variables and functions */
#define  OBJ_BLOB 133 
#define  OBJ_COMMIT 132 
#define  OBJ_OFS_DELTA 131 
#define  OBJ_REF_DELTA 130 
#define  OBJ_TAG 129 
#define  OBJ_TREE 128 
 int /*<<< orphan*/  consumed_bytes ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned char* FUNC2 (int) ; 
 int has_errors ; 
 TYPE_1__* obj_list ; 
 int /*<<< orphan*/  recover ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned long,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int,unsigned long,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(unsigned nr)
{
	unsigned shift;
	unsigned char *pack;
	unsigned long size, c;
	enum object_type type;

	obj_list[nr].offset = consumed_bytes;

	pack = FUNC2(1);
	c = *pack;
	FUNC5(1);
	type = (c >> 4) & 7;
	size = (c & 15);
	shift = 4;
	while (c & 0x80) {
		pack = FUNC2(1);
		c = *pack;
		FUNC5(1);
		size += (c & 0x7f) << shift;
		shift += 7;
	}

	switch (type) {
	case OBJ_COMMIT:
	case OBJ_TREE:
	case OBJ_BLOB:
	case OBJ_TAG:
		FUNC4(type, size, nr);
		return;
	case OBJ_REF_DELTA:
	case OBJ_OFS_DELTA:
		FUNC3(type, size, nr);
		return;
	default:
		FUNC0("bad object type %d", type);
		has_errors = 1;
		if (recover)
			return;
		FUNC1(1);
	}
}
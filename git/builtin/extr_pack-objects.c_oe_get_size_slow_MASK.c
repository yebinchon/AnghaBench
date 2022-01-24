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
struct packing_data {int dummy; } ;
struct packed_git {int dummy; } ;
struct pack_window {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  oid; } ;
struct object_entry {scalar_t__ type_; TYPE_1__ idx; int /*<<< orphan*/  in_pack_offset; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ OBJ_OFS_DELTA ; 
 scalar_t__ OBJ_REF_DELTA ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct packed_git* FUNC3 (struct packing_data*,struct object_entry const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  to_pack ; 
 unsigned long FUNC8 (unsigned char*,unsigned long,int*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC9 (struct pack_window**) ; 
 unsigned char* FUNC10 (struct packed_git*,struct pack_window**,int /*<<< orphan*/ ,unsigned long*) ; 

unsigned long FUNC11(struct packing_data *pack,
			       const struct object_entry *e)
{
	struct packed_git *p;
	struct pack_window *w_curs;
	unsigned char *buf;
	enum object_type type;
	unsigned long used, avail, size;

	if (e->type_ != OBJ_OFS_DELTA && e->type_ != OBJ_REF_DELTA) {
		FUNC6(&to_pack);
		if (FUNC4(the_repository, &e->idx.oid, &size) < 0)
			FUNC2(FUNC1("unable to get size of %s"),
			    FUNC5(&e->idx.oid));
		FUNC7(&to_pack);
		return size;
	}

	p = FUNC3(pack, e);
	if (!p)
		FUNC0("when e->type is a delta, it must belong to a pack");

	FUNC6(&to_pack);
	w_curs = NULL;
	buf = FUNC10(p, &w_curs, e->in_pack_offset, &avail);
	used = FUNC8(buf, avail, &type, &size);
	if (used == 0)
		FUNC2(FUNC1("unable to parse object header of %s"),
		    FUNC5(&e->idx.oid));

	FUNC9(&w_curs);
	FUNC7(&to_pack);
	return size;
}
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
struct TYPE_2__ {int offset; int /*<<< orphan*/  oid; } ;
struct object_entry {TYPE_1__ idx; scalar_t__ preferred_base; } ;
struct hashfile {int dummy; } ;
typedef  int off_t ;
typedef  enum write_one_status { ____Placeholder_write_one_status } write_one_status ;

/* Variables and functions */
 struct object_entry* FUNC0 (struct object_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct object_entry*,int /*<<< orphan*/ *) ; 
#define  WRITE_ONE_BREAK 129 
#define  WRITE_ONE_RECURSIVE 128 
 int WRITE_ONE_SKIP ; 
 int WRITE_ONE_WRITTEN ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nr_written ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct hashfile*,struct object_entry*,int) ; 
 TYPE_1__** written_list ; 

__attribute__((used)) static enum write_one_status FUNC8(struct hashfile *f,
				       struct object_entry *e,
				       off_t *offset)
{
	off_t size;
	int recursing;

	/*
	 * we set offset to 1 (which is an impossible value) to mark
	 * the fact that this object is involved in "write its base
	 * first before writing a deltified object" recursion.
	 */
	recursing = (e->idx.offset == 1);
	if (recursing) {
		FUNC6(FUNC2("recursive delta detected for object %s"),
			FUNC4(&e->idx.oid));
		return WRITE_ONE_RECURSIVE;
	} else if (e->idx.offset || e->preferred_base) {
		/* offset is non zero if object is written already. */
		return WRITE_ONE_SKIP;
	}

	/* if we are deltified, write out base object first. */
	if (FUNC0(e)) {
		e->idx.offset = 1; /* now recurse */
		switch (FUNC8(f, FUNC0(e), offset)) {
		case WRITE_ONE_RECURSIVE:
			/* we cannot depend on this one */
			FUNC1(e, NULL);
			break;
		default:
			break;
		case WRITE_ONE_BREAK:
			e->idx.offset = recursing;
			return WRITE_ONE_BREAK;
		}
	}

	e->idx.offset = *offset;
	size = FUNC7(f, e, *offset);
	if (!size) {
		e->idx.offset = recursing;
		return WRITE_ONE_BREAK;
	}
	written_list[nr_written++] = &e->idx;

	/* make sure off_t is sufficiently large not to wrap */
	if (FUNC5(*offset, size))
		FUNC3(FUNC2("pack too large for current definition of off_t"));
	*offset += size;
	return WRITE_ONE_WRITTEN;
}
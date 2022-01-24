#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  oid; } ;
struct object_entry {TYPE_1__ idx; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;
struct TYPE_5__ {int /*<<< orphan*/  oid; } ;
struct TYPE_6__ {TYPE_2__ idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_3__* FUNC1 (struct object_entry*) ; 
 unsigned long FUNC2 (struct object_entry*) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (void*,unsigned long,void*,unsigned long,unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 void* FUNC8 (int /*<<< orphan*/ *,int*,unsigned long*) ; 

__attribute__((used)) static void *FUNC9(struct object_entry *entry)
{
	unsigned long size, base_size, delta_size;
	void *buf, *base_buf, *delta_buf;
	enum object_type type;

	buf = FUNC8(&entry->idx.oid, &type, &size);
	if (!buf)
		FUNC4(FUNC3("unable to read %s"), FUNC7(&entry->idx.oid));
	base_buf = FUNC8(&FUNC1(entry)->idx.oid, &type,
				    &base_size);
	if (!base_buf)
		FUNC4("unable to read %s",
		    FUNC7(&FUNC1(entry)->idx.oid));
	delta_buf = FUNC5(base_buf, base_size,
			       buf, size, &delta_size, 0);
	/*
	 * We succesfully computed this delta once but dropped it for
	 * memory reasons. Something is very wrong if this time we
	 * recompute and create a different delta.
	 */
	if (!delta_buf || delta_size != FUNC2(entry))
		FUNC0("delta size changed");
	FUNC6(buf);
	FUNC6(base_buf);
	return delta_buf;
}
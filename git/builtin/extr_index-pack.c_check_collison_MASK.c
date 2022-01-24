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
struct TYPE_2__ {int /*<<< orphan*/  oid; } ;
struct object_entry {unsigned long size; scalar_t__ type; TYPE_1__ idx; } ;
struct compare_data {int /*<<< orphan*/  buf; int /*<<< orphan*/  st; struct object_entry* entry; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 scalar_t__ OBJ_BLOB ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 unsigned long big_file_threshold ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  compare_objects ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct compare_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int*,unsigned long*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct object_entry*,int /*<<< orphan*/ ,struct compare_data*) ; 

__attribute__((used)) static int FUNC8(struct object_entry *entry)
{
	struct compare_data data;
	enum object_type type;
	unsigned long size;

	if (entry->size <= big_file_threshold || entry->type != OBJ_BLOB)
		return -1;

	FUNC4(&data, 0, sizeof(data));
	data.entry = entry;
	data.st = FUNC6(&entry->idx.oid, &type, &size, NULL);
	if (!data.st)
		return -1;
	if (size != entry->size || type != entry->type)
		FUNC2(FUNC0("SHA1 COLLISION FOUND WITH %s !"),
		    FUNC5(&entry->idx.oid));
	FUNC7(entry, compare_objects, &data);
	FUNC1(data.st);
	FUNC3(data.buf);
	return 0;
}
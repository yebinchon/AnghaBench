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
struct object {int /*<<< orphan*/  flags; int /*<<< orphan*/  oid; int /*<<< orphan*/  type; } ;
struct obj_buffer {int /*<<< orphan*/  size; int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLAG_WRITTEN ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct object_id*) ; 

__attribute__((used)) static void FUNC4(struct object *obj, struct obj_buffer *obj_buf)
{
	struct object_id oid;

	if (FUNC3(obj_buf->buffer, obj_buf->size,
			      FUNC2(obj->type), &oid) < 0)
		FUNC0("failed to write object %s", FUNC1(&obj->oid));
	obj->flags |= FLAG_WRITTEN;
}
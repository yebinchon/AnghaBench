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
struct object {int /*<<< orphan*/  oid; } ;
struct obj_buffer {char* buffer; unsigned long size; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,struct object*,struct obj_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  obj_decorate ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct obj_buffer* FUNC3 (int,int) ; 

__attribute__((used)) static void FUNC4(struct object *object, char *buffer, unsigned long size)
{
	struct obj_buffer *obj;
	obj = FUNC3(1, sizeof(struct obj_buffer));
	obj->buffer = buffer;
	obj->size = size;
	if (FUNC0(&obj_decorate, object, obj))
		FUNC1("object %s tried to add buffer twice!", FUNC2(&object->oid));
}
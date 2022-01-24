#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  offset; } ;
struct object_entry {TYPE_1__ idx; scalar_t__ size; int /*<<< orphan*/  type; } ;
struct base_data {void* data; scalar_t__ size; struct base_data* base; struct object_entry* obj; } ;
struct TYPE_4__ {int /*<<< orphan*/  base_cache_used; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct base_data**,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct base_data**) ; 
 void* FUNC4 (struct object_entry*) ; 
 TYPE_2__* FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 void* FUNC7 (void*,scalar_t__,void*,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (struct base_data*) ; 

__attribute__((used)) static void *FUNC9(struct base_data *c)
{
	if (!c->data) {
		struct object_entry *obj = c->obj;
		struct base_data **delta = NULL;
		int delta_nr = 0, delta_alloc = 0;

		while (FUNC6(c->obj->type) && !c->data) {
			FUNC0(delta, delta_nr + 1, delta_alloc);
			delta[delta_nr++] = c;
			c = c->base;
		}
		if (!delta_nr) {
			c->data = FUNC4(obj);
			c->size = obj->size;
			FUNC5()->base_cache_used += c->size;
			FUNC8(c);
		}
		for (; delta_nr > 0; delta_nr--) {
			void *base, *raw;
			c = delta[delta_nr - 1];
			obj = c->obj;
			base = FUNC9(c->base);
			raw = FUNC4(obj);
			c->data = FUNC7(
				base, c->base->size,
				raw, obj->size,
				&c->size);
			FUNC3(raw);
			if (!c->data)
				FUNC2(obj->idx.offset, FUNC1("failed to apply delta"));
			FUNC5()->base_cache_used += c->size;
			FUNC8(c);
		}
		FUNC3(delta);
	}
	return c->data;
}
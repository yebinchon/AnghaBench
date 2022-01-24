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
typedef  size_t uint32_t ;
struct namedobj_instance {size_t (* hash_f ) (struct namedobj_instance*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;size_t nn_size; int /*<<< orphan*/  count; int /*<<< orphan*/ * values; int /*<<< orphan*/ * names; } ;
struct named_object {int /*<<< orphan*/  kidx; int /*<<< orphan*/  set; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct named_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nn_next ; 
 int /*<<< orphan*/  nv_next ; 
 size_t FUNC1 (struct namedobj_instance*,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (struct namedobj_instance*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(struct namedobj_instance *ni, struct named_object *no)
{
	uint32_t hash;

	hash = ni->hash_f(ni, no->name, no->set) % ni->nn_size;
	FUNC0(&ni->names[hash], no, nn_next);

	hash = FUNC1(ni, no->kidx);
	FUNC0(&ni->values[hash], no, nv_next);

	ni->count++;
}
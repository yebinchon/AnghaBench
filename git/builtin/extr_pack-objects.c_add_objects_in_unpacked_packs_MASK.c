#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct packed_git {size_t num_objects; scalar_t__ pack_keep_in_core; scalar_t__ pack_keep; int /*<<< orphan*/  pack_local; struct packed_git* next; } ;
struct object_id {int dummy; } ;
struct object {int flags; int /*<<< orphan*/  type; int /*<<< orphan*/  oid; } ;
struct in_pack {size_t nr; TYPE_1__* array; int /*<<< orphan*/  alloc; } ;
typedef  int /*<<< orphan*/  in_pack ;
struct TYPE_4__ {struct object* object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,size_t,int /*<<< orphan*/ ) ; 
 int OBJECT_ADDED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 struct packed_git* FUNC6 (int /*<<< orphan*/ ) ; 
 struct object* FUNC7 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC8 (struct object*,struct packed_git*,struct in_pack*) ; 
 int /*<<< orphan*/  FUNC9 (struct in_pack*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct object_id*,struct packed_git*,size_t) ; 
 int /*<<< orphan*/  ofscmp ; 
 scalar_t__ FUNC11 (struct packed_git*) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static void FUNC12(void)
{
	struct packed_git *p;
	struct in_pack in_pack;
	uint32_t i;

	FUNC9(&in_pack, 0, sizeof(in_pack));

	for (p = FUNC6(the_repository); p; p = p->next) {
		struct object_id oid;
		struct object *o;

		if (!p->pack_local || p->pack_keep || p->pack_keep_in_core)
			continue;
		if (FUNC11(p))
			FUNC4(FUNC2("cannot open pack index"));

		FUNC0(in_pack.array,
			   in_pack.nr + p->num_objects,
			   in_pack.alloc);

		for (i = 0; i < p->num_objects; i++) {
			FUNC10(&oid, p, i);
			o = FUNC7(&oid);
			if (!(o->flags & OBJECT_ADDED))
				FUNC8(o, p, &in_pack);
			o->flags |= OBJECT_ADDED;
		}
	}

	if (in_pack.nr) {
		FUNC1(in_pack.array, in_pack.nr, ofscmp);
		for (i = 0; i < in_pack.nr; i++) {
			struct object *o = in_pack.array[i].object;
			FUNC3(&o->oid, o->type, "", 0);
		}
	}
	FUNC5(in_pack.array);
}
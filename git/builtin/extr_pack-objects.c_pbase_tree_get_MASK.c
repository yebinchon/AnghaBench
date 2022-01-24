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
struct pbase_tree_cache {int ref; int temporary; void* tree_data; unsigned long tree_size; int /*<<< orphan*/  oid; } ;
struct object_id {int dummy; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 int OBJ_TREE ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct object_id const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,struct object_id const*) ; 
 struct pbase_tree_cache** pbase_tree_cache ; 
 int FUNC3 (struct object_id const*) ; 
 int FUNC4 (int) ; 
 void* FUNC5 (struct object_id const*,int*,unsigned long*) ; 
 struct pbase_tree_cache* FUNC6 (int) ; 

__attribute__((used)) static struct pbase_tree_cache *FUNC7(const struct object_id *oid)
{
	struct pbase_tree_cache *ent, *nent;
	void *data;
	unsigned long size;
	enum object_type type;
	int neigh;
	int my_ix = FUNC3(oid);
	int available_ix = -1;

	/* pbase-tree-cache acts as a limited hashtable.
	 * your object will be found at your index or within a few
	 * slots after that slot if it is cached.
	 */
	for (neigh = 0; neigh < 8; neigh++) {
		ent = pbase_tree_cache[my_ix];
		if (ent && FUNC2(&ent->oid, oid)) {
			ent->ref++;
			return ent;
		}
		else if (((available_ix < 0) && (!ent || !ent->ref)) ||
			 ((0 <= available_ix) &&
			  (!ent && pbase_tree_cache[available_ix])))
			available_ix = my_ix;
		if (!ent)
			break;
		my_ix = FUNC4(my_ix);
	}

	/* Did not find one.  Either we got a bogus request or
	 * we need to read and perhaps cache.
	 */
	data = FUNC5(oid, &type, &size);
	if (!data)
		return NULL;
	if (type != OBJ_TREE) {
		FUNC0(data);
		return NULL;
	}

	/* We need to either cache or return a throwaway copy */

	if (available_ix < 0)
		ent = NULL;
	else {
		ent = pbase_tree_cache[available_ix];
		my_ix = available_ix;
	}

	if (!ent) {
		nent = FUNC6(sizeof(*nent));
		nent->temporary = (available_ix < 0);
	}
	else {
		/* evict and reuse */
		FUNC0(ent->tree_data);
		nent = ent;
	}
	FUNC1(&nent->oid, oid);
	nent->tree_data = data;
	nent->tree_size = size;
	nent->ref = 1;
	if (!nent->temporary)
		pbase_tree_cache[my_ix] = nent;
	return nent;
}
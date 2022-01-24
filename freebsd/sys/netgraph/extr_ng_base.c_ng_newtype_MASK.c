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
struct ng_type {scalar_t__ version; int refs; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ng_type*,int /*<<< orphan*/ ) ; 
 scalar_t__ NG_ABI_VERSION ; 
 size_t const NG_TYPESIZ ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ng_typelist ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 size_t FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  types ; 

int
FUNC7(struct ng_type *tp)
{
	const size_t namelen = FUNC6(tp->name);

	/* Check version and type name fields */
	if ((tp->version != NG_ABI_VERSION) || (namelen == 0) ||
	    (namelen >= NG_TYPESIZ)) {
		FUNC1();
		if (tp->version != NG_ABI_VERSION) {
			FUNC5("Netgraph: Node type rejected. ABI mismatch. "
			    "Suggest recompile\n");
		}
		return (EINVAL);
	}

	/* Check for name collision */
	if (FUNC4(tp->name) != NULL) {
		FUNC1();
		return (EEXIST);
	}

	/* Link in new type */
	FUNC2();
	FUNC0(&ng_typelist, tp, types);
	tp->refs = 1;	/* first ref is linked list */
	FUNC3();
	return (0);
}
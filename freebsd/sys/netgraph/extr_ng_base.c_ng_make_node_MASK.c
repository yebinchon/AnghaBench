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
struct ng_type {int (* constructor ) (int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  node_p ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct ng_type* FUNC2 (char const*) ; 
 int FUNC3 (struct ng_type*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(const char *typename, node_p *nodepp)
{
	struct ng_type *type;
	int	error;

	/* Check that the type makes sense */
	if (typename == NULL) {
		FUNC1();
		return (EINVAL);
	}

	/* Locate the node type. If we fail we return. Do not try to load
	 * module.
	 */
	if ((type = FUNC2(typename)) == NULL)
		return (ENXIO);

	/*
	 * If we have a constructor, then make the node and
	 * call the constructor to do type specific initialisation.
	 */
	if (type->constructor != NULL) {
		if ((error = FUNC3(type, nodepp)) == 0) {
			if ((error = ((*type->constructor)(*nodepp))) != 0) {
				FUNC0(*nodepp);
			}
		}
	} else {
		/*
		 * Node has no constructor. We cannot ask for one
		 * to be made. It must be brought into existence by
		 * some external agency. The external agency should
		 * call ng_make_node_common() directly to get the
		 * netgraph part initialised.
		 */
		FUNC1();
		error = EINVAL;
	}
	return (error);
}
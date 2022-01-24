#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  TYPE_1__* priv_p ;
typedef  scalar_t__ node_p ;
typedef  TYPE_2__* link_p ;
typedef  int /*<<< orphan*/  linkName ;
typedef  int /*<<< orphan*/  hook_p ;
struct TYPE_7__ {int /*<<< orphan*/  hook; } ;
struct TYPE_6__ {int /*<<< orphan*/  numLinks; } ;

/* Variables and functions */
 int EINVAL ; 
 int ELOOP ; 
 int ENOMEM ; 
 int /*<<< orphan*/  M_NETGRAPH_BRIDGE ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 char* NG_BRIDGE_HOOK_LINK_PREFIX ; 
 int NG_HOOKSIZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_1__* FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,char const*) ; 
 int FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static	int
FUNC8(node_p node, hook_p hook, const char *name)
{
	const priv_p priv = FUNC1(node);

	/* Check for a link hook */
	if (FUNC6(name) > FUNC6(NG_BRIDGE_HOOK_LINK_PREFIX)) {
		char linkName[NG_HOOKSIZ];
		u_int32_t linkNum;
		link_p link;

		/* primitive parsing */
		linkNum = FUNC7(name + FUNC6(NG_BRIDGE_HOOK_LINK_PREFIX),
				  NULL, 10);
		/* validation by comparing against the reconstucted name  */
		FUNC4(linkName, sizeof(linkName),
			 "%s%u", NG_BRIDGE_HOOK_LINK_PREFIX,
			 linkNum);
		if (FUNC5(linkName, name) != 0)
			return (EINVAL);
		
		if(FUNC2(hook) == node)
		        return (ELOOP);

		link = FUNC3(sizeof(*link), M_NETGRAPH_BRIDGE,
			      M_WAITOK|M_ZERO);
		if (link == NULL)
			return (ENOMEM);
		link->hook = hook;
		FUNC0(hook, link);
		priv->numLinks++;
		return (0);
	}

	/* Unknown hook name */
	return (EINVAL);
}
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
typedef  int /*<<< orphan*/  node_p ;
typedef  int /*<<< orphan*/  hook_p ;
typedef  TYPE_2__* hinfo_p ;
struct TYPE_7__ {TYPE_1__* prog; int /*<<< orphan*/  hook; } ;
struct TYPE_6__ {int /*<<< orphan*/  thisHook; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  M_NETGRAPH_BPF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ng_bpf_addrefs ; 
 int /*<<< orphan*/  ng_bpf_default_prog ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static int
FUNC6(node_p node, hook_p hook, const char *name)
{
	hinfo_p hip;
	hook_p tmp;
	int error;

	/* Create hook private structure */
	hip = FUNC3(sizeof(*hip), M_NETGRAPH_BPF, M_NOWAIT | M_ZERO);
	if (hip == NULL)
		return (ENOMEM);
	hip->hook = hook;
	FUNC0(hook, hip);

	/* Add our reference into other hooks data. */
	FUNC1(node, ng_bpf_addrefs, hook, tmp);

	/* Attach the default BPF program */
	if ((error = FUNC4(hook, &ng_bpf_default_prog)) != 0) {
		FUNC2(hip, M_NETGRAPH_BPF);
		FUNC0(hook, NULL);
		return (error);
	}

	/* Set hook name */
	FUNC5(hip->prog->thisHook, name, sizeof(hip->prog->thisHook));
	return (0);
}
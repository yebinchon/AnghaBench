#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ng_bpf_hookprog {scalar_t__ bpf_prog_len; int /*<<< orphan*/  ifNotMatch; int /*<<< orphan*/  ifMatch; int /*<<< orphan*/  bpf_prog; } ;
typedef  int /*<<< orphan*/  hook_p ;
typedef  TYPE_1__* hinfo_p ;
typedef  int /*<<< orphan*/  bpf_jit_filter ;
struct TYPE_3__ {struct ng_bpf_hookprog* prog; void* nomatch; void* match; int /*<<< orphan*/ * jit_prog; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  M_NETGRAPH_BPF ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ng_bpf_hookprog const*,struct ng_bpf_hookprog*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ bpf_maxinsns ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct ng_bpf_hookprog*,int /*<<< orphan*/ ) ; 
 struct ng_bpf_hookprog* FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(hook_p hook, const struct ng_bpf_hookprog *hp0)
{
	const hinfo_p hip = FUNC2(hook);
	struct ng_bpf_hookprog *hp;
#ifdef BPF_JITTER
	bpf_jit_filter *jit_prog;
#endif
	int size;

	/* Check program for validity */
	if (hp0->bpf_prog_len > bpf_maxinsns ||
	    !FUNC6(hp0->bpf_prog, hp0->bpf_prog_len))
		return (EINVAL);

	/* Make a copy of the program */
	size = FUNC0(hp0->bpf_prog_len);
	hp = FUNC8(size, M_NETGRAPH_BPF, M_NOWAIT);
	if (hp == NULL)
		return (ENOMEM);
	FUNC3(hp0, hp, size);
#ifdef BPF_JITTER
	jit_prog = bpf_jitter(hp->bpf_prog, hp->bpf_prog_len);
#endif

	/* Free previous program, if any, and assign new one */
	if (hip->prog != NULL)
		FUNC7(hip->prog, M_NETGRAPH_BPF);
	hip->prog = hp;
#ifdef BPF_JITTER
	if (hip->jit_prog != NULL)
		bpf_destroy_jit_filter(hip->jit_prog);
	hip->jit_prog = jit_prog;
#endif

	/* Prepare direct references on target hooks. */
	hip->match = FUNC9(FUNC1(hook), hip->prog->ifMatch);
	hip->nomatch = FUNC9(FUNC1(hook), hip->prog->ifNotMatch);
	return (0);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct pf_ruleset {TYPE_3__* rules; } ;
struct pf_rule {int quick; TYPE_1__* anchor; } ;
struct pf_anchor_stackframe {struct pf_ruleset* rs; TYPE_4__* child; } ;
struct pf_anchor_node {int dummy; } ;
struct TYPE_9__ {struct pf_ruleset ruleset; } ;
struct TYPE_7__ {int /*<<< orphan*/  ptr; } ;
struct TYPE_8__ {TYPE_2__ active; } ;
struct TYPE_6__ {struct pf_anchor_node children; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pf_anchor_stackframe*) ; 
 struct pf_rule* FUNC1 (struct pf_anchor_stackframe*) ; 
 int /*<<< orphan*/  FUNC2 (struct pf_anchor_stackframe*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ ,struct pf_anchor_node*,TYPE_4__*) ; 
 struct pf_rule* FUNC5 (int /*<<< orphan*/ ) ; 
 struct pf_rule* FUNC6 (struct pf_rule*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entries ; 
 int /*<<< orphan*/  pf_anchor_node ; 

int
FUNC7(struct pf_anchor_stackframe *stack, int *depth,
    struct pf_ruleset **rs, int n, struct pf_rule **r, struct pf_rule **a,
    int *match)
{
	struct pf_anchor_stackframe	*f;
	struct pf_rule *fr;
	int quick = 0;

	FUNC3();

	do {
		if (*depth <= 0)
			break;
		f = stack + *depth - 1;
		fr = FUNC1(f);
		if (f->child != NULL) {
			struct pf_anchor_node *parent;

			/*
			 * This block traverses through
			 * a wildcard anchor.
			 */
			parent = &fr->anchor->children;
			if (match != NULL && *match) {
				/*
				 * If any of "*" matched, then
				 * "foo/ *" matched, mark frame
				 * appropriately.
				 */
				FUNC2(f);
				*match = 0;
			}
			f->child = FUNC4(pf_anchor_node, parent, f->child);
			if (f->child != NULL) {
				*rs = &f->child->ruleset;
				*r = FUNC5((*rs)->rules[n].active.ptr);
				if (*r == NULL)
					continue;
				else
					break;
			}
		}
		(*depth)--;
		if (*depth == 0 && a != NULL)
			*a = NULL;
		*rs = f->rs;
		if (FUNC0(f) || (match != NULL && *match))
			quick = fr->quick;
		*r = FUNC6(fr, entries);
	} while (*r == NULL);

	return (quick);
}
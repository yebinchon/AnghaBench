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
struct pf_fragment {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pf_fragment*,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pf_fragment*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct pf_fragment*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_pf_frag_tree ; 
 int /*<<< orphan*/  V_pf_frag_z ; 
 int /*<<< orphan*/  V_pf_fragqueue ; 
 int /*<<< orphan*/  frag_next ; 
 int /*<<< orphan*/  pf_frag_tree ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct pf_fragment*) ; 

__attribute__((used)) static void
FUNC5(struct pf_fragment *frag)
{

	FUNC1();
	FUNC0(frag, ("frag != NULL"));

	FUNC2(pf_frag_tree, &V_pf_frag_tree, frag);
	FUNC3(&V_pf_fragqueue, frag, frag_next);
	FUNC4(V_pf_frag_z, frag);
}
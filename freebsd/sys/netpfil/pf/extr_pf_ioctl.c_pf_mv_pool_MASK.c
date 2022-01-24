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
struct pf_pooladdr {int dummy; } ;
struct pf_palist {int dummy; } ;

/* Variables and functions */
 struct pf_pooladdr* FUNC0 (struct pf_palist*) ; 
 int /*<<< orphan*/  FUNC1 (struct pf_palist*,struct pf_pooladdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pf_palist*,struct pf_pooladdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entries ; 

__attribute__((used)) static void
FUNC3(struct pf_palist *poola, struct pf_palist *poolb)
{
	struct pf_pooladdr	*mv_pool_pa;

	while ((mv_pool_pa = FUNC0(poola)) != NULL) {
		FUNC2(poola, mv_pool_pa, entries);
		FUNC1(poolb, mv_pool_pa, entries);
	}
}
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
typedef  TYPE_1__* vm_page_t ;
struct dmar_domain {int /*<<< orphan*/  dmar; int /*<<< orphan*/  flags; int /*<<< orphan*/ * pgtbl_obj; int /*<<< orphan*/  pglvl; } ;
struct TYPE_3__ {int ref_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dmar_domain*) ; 
 int /*<<< orphan*/  DMAR_DOMAIN_PGTBL_INITED ; 
 int /*<<< orphan*/  FUNC1 (struct dmar_domain*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int DMAR_PGF_OBJL ; 
 int DMAR_PGF_WAITOK ; 
 int DMAR_PGF_ZERO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  OBJT_PHYS ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC9(struct dmar_domain *domain)
{
	vm_page_t m;

	FUNC5(domain->pgtbl_obj == NULL,
	    ("already initialized %p", domain));

	domain->pgtbl_obj = FUNC8(OBJT_PHYS, NULL,
	    FUNC4(FUNC7(domain->pglvl)), 0, 0, NULL);
	FUNC0(domain);
	m = FUNC6(domain->pgtbl_obj, 0, DMAR_PGF_WAITOK |
	    DMAR_PGF_ZERO | DMAR_PGF_OBJL);
	/* No implicit free of the top level page table page. */
	m->ref_count = 1;
	FUNC1(domain);
	FUNC2(domain->dmar);
	domain->flags |= DMAR_DOMAIN_PGTBL_INITED;
	FUNC3(domain->dmar);
	return (0);
}
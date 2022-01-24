#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_pindex_t ;
typedef  TYPE_1__* vm_page_t ;
struct sf_buf {int dummy; } ;
struct dmar_domain {int /*<<< orphan*/  dmar; int /*<<< orphan*/  pgtbl_obj; } ;
struct TYPE_10__ {int /*<<< orphan*/  pte; } ;
typedef  TYPE_2__ dmar_pte_t ;
typedef  int /*<<< orphan*/  dmar_gaddr_t ;
struct TYPE_11__ {int ref_count; } ;
struct TYPE_9__ {scalar_t__ pindex; int /*<<< orphan*/  ref_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dmar_domain*) ; 
 int DMAR_PGF_OBJL ; 
 int DMAR_PGF_ZERO ; 
 int DMAR_PTE_R ; 
 int DMAR_PTE_W ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,scalar_t__,int,struct sf_buf**) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sf_buf*) ; 
 scalar_t__ FUNC9 (struct dmar_domain*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct dmar_domain*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (struct sf_buf*) ; 
 TYPE_3__* FUNC12 (struct sf_buf*) ; 

__attribute__((used)) static dmar_pte_t *
FUNC13(struct dmar_domain *domain, dmar_gaddr_t base, int lvl,
    int flags, vm_pindex_t *idxp, struct sf_buf **sf)
{
	vm_page_t m;
	struct sf_buf *sfp;
	dmar_pte_t *pte, *ptep;
	vm_pindex_t idx, idx1;

	FUNC0(domain);
	FUNC1((flags & DMAR_PGF_OBJL) != 0, ("lost PGF_OBJL"));

	idx = FUNC9(domain, base, lvl);
	if (*sf != NULL && idx == *idxp) {
		pte = (dmar_pte_t *)FUNC11(*sf);
	} else {
		if (*sf != NULL)
			FUNC8(*sf);
		*idxp = idx;
retry:
		pte = FUNC4(domain->pgtbl_obj, idx, flags, sf);
		if (pte == NULL) {
			FUNC1(lvl > 0,
			    ("lost root page table page %p", domain));
			/*
			 * Page table page does not exist, allocate
			 * it and create a pte in the preceeding page level
			 * to reference the allocated page table page.
			 */
			m = FUNC5(domain->pgtbl_obj, idx, flags |
			    DMAR_PGF_ZERO);
			if (m == NULL)
				return (NULL);

			/*
			 * Prevent potential free while pgtbl_obj is
			 * unlocked in the recursive call to
			 * domain_pgtbl_map_pte(), if other thread did
			 * pte write and clean while the lock is
			 * dropped.
			 */
			m->ref_count++;

			sfp = NULL;
			ptep = FUNC13(domain, base, lvl - 1,
			    flags, &idx1, &sfp);
			if (ptep == NULL) {
				FUNC1(m->pindex != 0,
				    ("loosing root page %p", domain));
				m->ref_count--;
				FUNC6(domain->pgtbl_obj, m->pindex,
				    flags);
				return (NULL);
			}
			FUNC7(&ptep->pte, DMAR_PTE_R | DMAR_PTE_W |
			    FUNC2(m));
			FUNC3(domain->dmar, ptep);
			FUNC12(sfp)->ref_count += 1;
			m->ref_count--;
			FUNC8(sfp);
			/* Only executed once. */
			goto retry;
		}
	}
	pte += FUNC10(domain, base, lvl);
	return (pte);
}
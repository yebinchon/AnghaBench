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
typedef  TYPE_2__* vm_page_t ;
typedef  int /*<<< orphan*/ * vm_object_t ;
struct dmar_domain {int flags; int /*<<< orphan*/ * pgtbl_obj; TYPE_1__* dmar; } ;
struct TYPE_7__ {scalar_t__ ref_count; } ;
struct TYPE_6__ {int hw_ecap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dmar_domain*) ; 
 int DMAR_DOMAIN_IDMAP ; 
 int DMAR_ECAP_PT ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC7 (TYPE_2__*) ; 

void
FUNC8(struct dmar_domain *domain)
{
	vm_object_t obj;
	vm_page_t m;

	obj = domain->pgtbl_obj;
	if (obj == NULL) {
		FUNC1((domain->dmar->hw_ecap & DMAR_ECAP_PT) != 0 &&
		    (domain->flags & DMAR_DOMAIN_IDMAP) != 0,
		    ("lost pagetable object domain %p", domain));
		return;
	}
	FUNC0(domain);
	domain->pgtbl_obj = NULL;

	if ((domain->flags & DMAR_DOMAIN_IDMAP) != 0) {
		FUNC4(obj);
		domain->flags &= ~DMAR_DOMAIN_IDMAP;
		return;
	}

	/* Obliterate ref_counts */
	FUNC2(obj);
	for (m = FUNC6(obj, 0); m != NULL; m = FUNC7(m))
		m->ref_count = 0;
	FUNC3(obj);
	FUNC5(obj);
}
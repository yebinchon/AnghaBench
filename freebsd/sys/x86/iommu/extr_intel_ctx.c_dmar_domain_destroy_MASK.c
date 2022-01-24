#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dmar_domain {scalar_t__ ctx_cnt; scalar_t__ refs; int flags; int /*<<< orphan*/  domain; TYPE_1__* dmar; int /*<<< orphan*/  lock; int /*<<< orphan*/ * pgtbl_obj; int /*<<< orphan*/  contexts; int /*<<< orphan*/  unload_entries; } ;
struct TYPE_2__ {int /*<<< orphan*/  domids; } ;

/* Variables and functions */
 int DMAR_DOMAIN_GAS_INITED ; 
 int /*<<< orphan*/  FUNC0 (struct dmar_domain*) ; 
 int /*<<< orphan*/  FUNC1 (struct dmar_domain*) ; 
 int DMAR_DOMAIN_PGTBL_INITED ; 
 int /*<<< orphan*/  FUNC2 (struct dmar_domain*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  M_DMAR_DOMAIN ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct dmar_domain*) ; 
 int /*<<< orphan*/  FUNC7 (struct dmar_domain*) ; 
 int /*<<< orphan*/  FUNC8 (struct dmar_domain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(struct dmar_domain *domain)
{

	FUNC3(FUNC5(&domain->unload_entries),
	    ("unfinished unloads %p", domain));
	FUNC3(FUNC4(&domain->contexts),
	    ("destroying dom %p with contexts", domain));
	FUNC3(domain->ctx_cnt == 0,
	    ("destroying dom %p with ctx_cnt %d", domain, domain->ctx_cnt));
	FUNC3(domain->refs == 0,
	    ("destroying dom %p with refs %d", domain, domain->refs));
	if ((domain->flags & DMAR_DOMAIN_GAS_INITED) != 0) {
		FUNC0(domain);
		FUNC6(domain);
		FUNC2(domain);
	}
	if ((domain->flags & DMAR_DOMAIN_PGTBL_INITED) != 0) {
		if (domain->pgtbl_obj != NULL)
			FUNC1(domain);
		FUNC7(domain);
	}
	FUNC10(&domain->lock);
	FUNC9(domain->dmar->domids, domain->domain);
	FUNC8(domain, M_DMAR_DOMAIN);
}
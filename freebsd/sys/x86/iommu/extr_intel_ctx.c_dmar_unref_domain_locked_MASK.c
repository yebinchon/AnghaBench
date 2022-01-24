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
struct dmar_unit {int /*<<< orphan*/  delayed_taskqueue; int /*<<< orphan*/  unit; } ;
struct dmar_domain {int refs; int ctx_cnt; int flags; int /*<<< orphan*/  unload_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dmar_unit*) ; 
 int DMAR_DOMAIN_RMRR ; 
 int /*<<< orphan*/  FUNC1 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct dmar_domain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dmar_domain*) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct dmar_unit *dmar, struct dmar_domain *domain)
{

	FUNC0(dmar);
	FUNC2(domain->refs >= 1,
	    ("dmar %d domain %p refs %u", dmar->unit, domain, domain->refs));
	FUNC2(domain->refs > domain->ctx_cnt,
	    ("dmar %d domain %p refs %d ctx_cnt %d", dmar->unit, domain,
	    domain->refs, domain->ctx_cnt));

	if (domain->refs > 1) {
		domain->refs--;
		FUNC1(dmar);
		return;
	}

	FUNC2((domain->flags & DMAR_DOMAIN_RMRR) == 0,
	    ("lost ref on RMRR domain %p", domain));

	FUNC3(domain, link);
	FUNC1(dmar);

	FUNC5(dmar->delayed_taskqueue, &domain->unload_task);
	FUNC4(domain);
}
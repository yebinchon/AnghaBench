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
struct dmar_unit {int hw_ecap; int /*<<< orphan*/  domids; } ;
struct dmar_domain {int domain; unsigned long long end; int agaw; int /*<<< orphan*/  flags; int /*<<< orphan*/  pgtbl_obj; struct dmar_unit* dmar; int /*<<< orphan*/  lock; int /*<<< orphan*/  unload_task; int /*<<< orphan*/  unload_entries; int /*<<< orphan*/  rb_root; int /*<<< orphan*/  contexts; } ;

/* Variables and functions */
 unsigned long long BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  DMAR_DOMAIN_IDMAP ; 
 int DMAR_ECAP_PT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_DMAR_DOMAIN ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  Maxmem ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dmar_domain*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dmar_domain*) ; 
 int /*<<< orphan*/  dmar_domain_unload_task ; 
 int /*<<< orphan*/  FUNC6 (struct dmar_domain*) ; 
 int FUNC7 (struct dmar_domain*,int,int) ; 
 int FUNC8 (struct dmar_unit*,unsigned long long,int) ; 
 int FUNC9 (struct dmar_domain*) ; 
 int /*<<< orphan*/  FUNC10 (struct dmar_domain*,unsigned long long) ; 
 int FUNC11 (struct dmar_domain*,int) ; 
 struct dmar_domain* FUNC12 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned long long FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dmar_domain *
FUNC15(struct dmar_unit *dmar, bool id_mapped)
{
	struct dmar_domain *domain;
	int error, id, mgaw;

	id = FUNC4(dmar->domids);
	if (id == -1)
		return (NULL);
	domain = FUNC12(sizeof(*domain), M_DMAR_DOMAIN, M_WAITOK | M_ZERO);
	domain->domain = id;
	FUNC0(&domain->contexts);
	FUNC1(&domain->rb_root);
	FUNC2(&domain->unload_entries);
	FUNC3(&domain->unload_task, 0, dmar_domain_unload_task, domain);
	FUNC13(&domain->lock, "dmardom", NULL, MTX_DEF);
	domain->dmar = dmar;

	/*
	 * For now, use the maximal usable physical address of the
	 * installed memory to calculate the mgaw on id_mapped domain.
	 * It is useful for the identity mapping, and less so for the
	 * virtualized bus address space.
	 */
	domain->end = id_mapped ? FUNC14(Maxmem) : BUS_SPACE_MAXADDR;
	mgaw = FUNC8(dmar, domain->end, !id_mapped);
	error = FUNC11(domain, mgaw);
	if (error != 0)
		goto fail;
	if (!id_mapped)
		/* Use all supported address space for remapping. */
		domain->end = 1ULL << (domain->agaw - 1);

	FUNC6(domain);

	if (id_mapped) {
		if ((dmar->hw_ecap & DMAR_ECAP_PT) == 0) {
			domain->pgtbl_obj = FUNC10(domain,
			    domain->end);
		}
		domain->flags |= DMAR_DOMAIN_IDMAP;
	} else {
		error = FUNC9(domain);
		if (error != 0)
			goto fail;
		/* Disable local apic region access */
		error = FUNC7(domain, 0xfee00000,
		    0xfeefffff + 1);
		if (error != 0)
			goto fail;
	}
	return (domain);

fail:
	FUNC5(domain);
	return (NULL);
}
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
typedef  int /*<<< orphan*/  vm_page_t ;
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int u_int ;
struct dmar_map_entry {scalar_t__ end; int flags; scalar_t__ start; } ;
struct dmar_domain {scalar_t__ end; } ;
struct bus_dma_tag_common {int dummy; } ;
typedef  int /*<<< orphan*/  dmar_gaddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dmar_domain*) ; 
 int /*<<< orphan*/  FUNC1 (struct dmar_domain*) ; 
 int DMAR_GM_CANSPLIT ; 
 int DMAR_GM_CANWAIT ; 
 int DMAR_MAP_ENTRY_READ ; 
 int DMAR_MAP_ENTRY_SNOOP ; 
 int DMAR_MAP_ENTRY_TM ; 
 int DMAR_MAP_ENTRY_WRITE ; 
 int /*<<< orphan*/  DMAR_PGF_WAITOK ; 
 int DMAR_PTE_R ; 
 int DMAR_PTE_SNP ; 
 int DMAR_PTE_TM ; 
 int DMAR_PTE_W ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 scalar_t__ dmar_check_free ; 
 int /*<<< orphan*/  FUNC3 (struct dmar_map_entry*,int) ; 
 struct dmar_map_entry* FUNC4 (struct dmar_domain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dmar_domain*) ; 
 int FUNC6 (struct dmar_domain*,struct bus_dma_tag_common const*,int /*<<< orphan*/ ,int,int,struct dmar_map_entry*) ; 
 int /*<<< orphan*/  FUNC7 (struct dmar_domain*,struct dmar_map_entry*) ; 
 int FUNC8 (struct dmar_domain*,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

int
FUNC9(struct dmar_domain *domain,
    const struct bus_dma_tag_common *common, dmar_gaddr_t size, int offset,
    u_int eflags, u_int flags, vm_page_t *ma, struct dmar_map_entry **res)
{
	struct dmar_map_entry *entry;
	int error;

	FUNC2((flags & ~(DMAR_GM_CANWAIT | DMAR_GM_CANSPLIT)) == 0,
	    ("invalid flags 0x%x", flags));

	entry = FUNC4(domain, (flags & DMAR_GM_CANWAIT) != 0 ?
	    DMAR_PGF_WAITOK : 0);
	if (entry == NULL)
		return (ENOMEM);
	FUNC0(domain);
	error = FUNC6(domain, common, size, offset, flags,
	    entry);
	if (error == ENOMEM) {
		FUNC1(domain);
		FUNC7(domain, entry);
		return (error);
	}
#ifdef INVARIANTS
	if (dmar_check_free)
		dmar_gas_check_free(domain);
#endif
	FUNC2(error == 0,
	    ("unexpected error %d from dmar_gas_find_entry", error));
	FUNC2(entry->end < domain->end, ("allocated GPA %jx, max GPA %jx",
	    (uintmax_t)entry->end, (uintmax_t)domain->end));
	entry->flags |= eflags;
	FUNC1(domain);

	error = FUNC8(domain, entry->start, entry->end - entry->start,
	    ma,
	    ((eflags & DMAR_MAP_ENTRY_READ) != 0 ? DMAR_PTE_R : 0) |
	    ((eflags & DMAR_MAP_ENTRY_WRITE) != 0 ? DMAR_PTE_W : 0) |
	    ((eflags & DMAR_MAP_ENTRY_SNOOP) != 0 ? DMAR_PTE_SNP : 0) |
	    ((eflags & DMAR_MAP_ENTRY_TM) != 0 ? DMAR_PTE_TM : 0),
	    (flags & DMAR_GM_CANWAIT) != 0 ? DMAR_PGF_WAITOK : 0);
	if (error == ENOMEM) {
		FUNC3(entry, true);
		return (error);
	}
	FUNC2(error == 0,
	    ("unexpected error %d from domain_map_buf", error));

	*res = entry;
	return (0);
}
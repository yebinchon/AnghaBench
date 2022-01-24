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
typedef  int u_int ;
struct dmar_map_entry {int flags; scalar_t__ start; scalar_t__ end; } ;
struct dmar_domain {int dummy; } ;
typedef  scalar_t__ dmar_gaddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dmar_domain*) ; 
 int /*<<< orphan*/  FUNC1 (struct dmar_domain*) ; 
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
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct dmar_map_entry*,int) ; 
 int FUNC5 (struct dmar_domain*,struct dmar_map_entry*,int) ; 
 int FUNC6 (struct dmar_domain*,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

int
FUNC7(struct dmar_domain *domain, struct dmar_map_entry *entry,
    u_int eflags, u_int flags, vm_page_t *ma)
{
	dmar_gaddr_t start;
	int error;

	FUNC2(entry->flags == 0, ("used RMRR entry %p %p %x", domain,
	    entry, entry->flags));
	FUNC2((flags & ~(DMAR_GM_CANWAIT)) == 0,
	    ("invalid flags 0x%x", flags));

	start = entry->start;
	FUNC0(domain);
	error = FUNC5(domain, entry, flags);
	if (error != 0) {
		FUNC1(domain);
		return (error);
	}
	entry->flags |= eflags;
	FUNC1(domain);
	if (entry->end == entry->start)
		return (0);

	error = FUNC6(domain, entry->start, entry->end - entry->start,
	    ma + FUNC3(start - entry->start),
	    ((eflags & DMAR_MAP_ENTRY_READ) != 0 ? DMAR_PTE_R : 0) |
	    ((eflags & DMAR_MAP_ENTRY_WRITE) != 0 ? DMAR_PTE_W : 0) |
	    ((eflags & DMAR_MAP_ENTRY_SNOOP) != 0 ? DMAR_PTE_SNP : 0) |
	    ((eflags & DMAR_MAP_ENTRY_TM) != 0 ? DMAR_PTE_TM : 0),
	    (flags & DMAR_GM_CANWAIT) != 0 ? DMAR_PGF_WAITOK : 0);
	if (error == ENOMEM) {
		FUNC4(entry, false);
		return (error);
	}
	FUNC2(error == 0,
	    ("unexpected error %d from domain_map_buf", error));

	return (0);
}
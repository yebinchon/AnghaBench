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
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int /*<<< orphan*/  u_int ;
struct dmar_map_entry {scalar_t__ flags; } ;
struct dmar_gas_match_args {int size; int offset; struct dmar_map_entry* entry; int /*<<< orphan*/  gas_flags; struct bus_dma_tag_common const* common; struct dmar_domain* domain; } ;
struct dmar_domain {scalar_t__ end; int /*<<< orphan*/  rb_root; } ;
struct bus_dma_tag_common {scalar_t__ lowaddr; scalar_t__ highaddr; } ;
typedef  int dmar_gaddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dmar_domain*) ; 
 int DMAR_PAGE_MASK ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct dmar_gas_match_args*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct dmar_gas_match_args*) ; 

__attribute__((used)) static int
FUNC5(struct dmar_domain *domain,
    const struct bus_dma_tag_common *common, dmar_gaddr_t size,
    int offset, u_int flags, struct dmar_map_entry *entry)
{
	struct dmar_gas_match_args a;
	int error;

	FUNC0(domain);
	FUNC1(entry->flags == 0, ("dirty entry %p %p", domain, entry));
	FUNC1((size & DMAR_PAGE_MASK) == 0, ("size %jx", (uintmax_t)size));

	a.domain = domain;
	a.size = size;
	a.offset = offset;
	a.common = common;
	a.gas_flags = flags;
	a.entry = entry;

	/* Handle lower region. */
	if (common->lowaddr > 0) {
		error = FUNC3(&a, FUNC2(&domain->rb_root));
		if (error == 0)
			return (0);
		FUNC1(error == ENOMEM,
		    ("error %d from dmar_gas_lowermatch", error));
	}
	/* Handle upper region. */
	if (common->highaddr >= domain->end)
		return (ENOMEM);
	error = FUNC4(&a);
	FUNC1(error == ENOMEM,
	    ("error %d from dmar_gas_uppermatch", error));
	return (error);
}
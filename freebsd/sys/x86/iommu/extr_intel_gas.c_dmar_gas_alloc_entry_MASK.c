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
typedef  int u_int ;
struct dmar_map_entry {struct dmar_domain* domain; } ;
struct dmar_domain {int /*<<< orphan*/  entries_cnt; } ;

/* Variables and functions */
 int DMAR_PGF_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int M_NOWAIT ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  dmar_map_entry_zone ; 
 struct dmar_map_entry* FUNC2 (int /*<<< orphan*/ ,int) ; 

struct dmar_map_entry *
FUNC3(struct dmar_domain *domain, u_int flags)
{
	struct dmar_map_entry *res;

	FUNC0((flags & ~(DMAR_PGF_WAITOK)) == 0,
	    ("unsupported flags %x", flags));

	res = FUNC2(dmar_map_entry_zone, ((flags & DMAR_PGF_WAITOK) !=
	    0 ? M_WAITOK : M_NOWAIT) | M_ZERO);
	if (res != NULL) {
		res->domain = domain;
		FUNC1(&domain->entries_cnt, 1);
	}
	return (res);
}
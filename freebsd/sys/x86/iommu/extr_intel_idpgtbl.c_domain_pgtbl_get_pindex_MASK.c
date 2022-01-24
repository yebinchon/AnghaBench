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
typedef  int vm_pindex_t ;
struct dmar_domain {int pglvl; } ;
typedef  int /*<<< orphan*/  dmar_gaddr_t ;

/* Variables and functions */
 int DMAR_NPTEPG ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (struct dmar_domain*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static vm_pindex_t
FUNC2(struct dmar_domain *domain, dmar_gaddr_t base, int lvl)
{
	vm_pindex_t idx, pidx;
	int i;

	FUNC0(lvl >= 0 && lvl < domain->pglvl,
	    ("wrong lvl %p %d", domain, lvl));

	for (pidx = idx = 0, i = 0; i < lvl; i++, pidx = idx) {
		idx = FUNC1(domain, base, i) +
		    pidx * DMAR_NPTEPG + 1;
	}
	return (idx);
}
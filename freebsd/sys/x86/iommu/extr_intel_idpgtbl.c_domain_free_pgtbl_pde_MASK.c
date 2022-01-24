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
typedef  int /*<<< orphan*/  vm_pindex_t ;
struct sf_buf {int dummy; } ;
struct dmar_domain {int dummy; } ;
typedef  int /*<<< orphan*/  dmar_pte_t ;
typedef  int /*<<< orphan*/  dmar_gaddr_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct dmar_domain*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,struct sf_buf**) ; 
 int /*<<< orphan*/  FUNC1 (struct dmar_domain*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,struct sf_buf**,int) ; 

__attribute__((used)) static void
FUNC2(struct dmar_domain *domain, dmar_gaddr_t base,
    int lvl, int flags)
{
	struct sf_buf *sf;
	dmar_pte_t *pde;
	vm_pindex_t idx;

	sf = NULL;
	pde = FUNC0(domain, base, lvl, flags, &idx, &sf);
	FUNC1(domain, base, lvl, flags, pde, &sf, true);
}
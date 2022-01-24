#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * uma_slab_t ;
typedef  TYPE_1__* uma_keg_t ;
typedef  TYPE_2__* uma_domain_t ;
struct TYPE_6__ {int /*<<< orphan*/  ud_part_slab; int /*<<< orphan*/  ud_free_slab; } ;
struct TYPE_5__ {TYPE_2__* uk_domain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  us_link ; 
 int vm_ndomains ; 

__attribute__((used)) static uma_slab_t
FUNC6(uma_keg_t keg, int domain, bool rr)
{
	uma_domain_t dom;
	uma_slab_t slab;
	int start;

	FUNC0(domain >= 0 && domain < vm_ndomains,
	    ("keg_first_slab: domain %d out of range", domain));
	FUNC1(keg);

	slab = NULL;
	start = domain;
	do {
		dom = &keg->uk_domain[domain];
		if (!FUNC2(&dom->ud_part_slab))
			return (FUNC3(&dom->ud_part_slab));
		if (!FUNC2(&dom->ud_free_slab)) {
			slab = FUNC3(&dom->ud_free_slab);
			FUNC5(slab, us_link);
			FUNC4(&dom->ud_part_slab, slab, us_link);
			return (slab);
		}
		if (rr)
			domain = (domain + 1) % vm_ndomains;
	} while (domain != start);

	return (NULL);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct dmar_domain {int mgaw; int agaw; TYPE_1__* dmar; int /*<<< orphan*/  awlvl; int /*<<< orphan*/  pglvl; } ;
struct TYPE_5__ {int agaw; int /*<<< orphan*/  awlvl; int /*<<< orphan*/  pglvl; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  hw_cap; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC2 (TYPE_2__*) ; 
 TYPE_2__* sagaw_bits ; 

int
FUNC3(struct dmar_domain *domain, int mgaw)
{
	int sagaw, i;

	domain->mgaw = mgaw;
	sagaw = FUNC0(domain->dmar->hw_cap);
	for (i = 0; i < FUNC2(sagaw_bits); i++) {
		if (sagaw_bits[i].agaw >= mgaw) {
			domain->agaw = sagaw_bits[i].agaw;
			domain->pglvl = sagaw_bits[i].pglvl;
			domain->awlvl = sagaw_bits[i].awlvl;
			return (0);
		}
	}
	FUNC1(domain->dmar->dev,
	    "context request mgaw %d: no agaw found, sagaw %x\n",
	    mgaw, sagaw);
	return (EINVAL);
}
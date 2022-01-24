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
typedef  TYPE_2__* pmap_t ;
struct TYPE_6__ {TYPE_1__* pm_asid; int /*<<< orphan*/  pm_active; } ;
struct TYPE_5__ {scalar_t__ gen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static __inline void
FUNC3(pmap_t pmap, void (*fn)(void *), void *arg)
{
	int	cpuid;

	if (FUNC2(pmap)) {
		fn(arg);
		return;
	}
	cpuid = FUNC1(cpuid);
	if (!FUNC0(cpuid, &pmap->pm_active))
		pmap->pm_asid[cpuid].gen = 0;
	else
		fn(arg);
}
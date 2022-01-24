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
struct dmar_unit {int hw_cap; int hw_ecap; scalar_t__ qi_enabled; } ;

/* Variables and functions */
 int DMAR_CAP_CM ; 
 int DMAR_ECAP_DI ; 
 int FUNC0 (struct dmar_unit*) ; 
 int FUNC1 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC2 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC3 (struct dmar_unit*) ; 

__attribute__((used)) static int
FUNC4(struct dmar_unit *dmar, bool force)
{
	int error;

	/*
	 * If dmar declares Caching Mode as Set, follow 11.5 "Caching
	 * Mode Consideration" and do the (global) invalidation of the
	 * negative TLB entries.
	 */
	if ((dmar->hw_cap & DMAR_CAP_CM) == 0 && !force)
		return (0);
	if (dmar->qi_enabled) {
		FUNC2(dmar);
		if ((dmar->hw_ecap & DMAR_ECAP_DI) != 0 || force)
			FUNC3(dmar);
		return (0);
	}
	error = FUNC0(dmar);
	if (error == 0 && ((dmar->hw_ecap & DMAR_ECAP_DI) != 0 || force))
		error = FUNC1(dmar);
	return (error);
}
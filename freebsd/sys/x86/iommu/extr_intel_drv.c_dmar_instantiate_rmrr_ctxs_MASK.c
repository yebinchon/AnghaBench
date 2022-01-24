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
struct inst_rmrr_iter_args {struct dmar_unit* dmar; } ;
struct dmar_unit {int hw_gcmd; int unit; int /*<<< orphan*/  domains; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMAR_BARRIER_RMRR ; 
 int DMAR_GCMD_TE ; 
 int /*<<< orphan*/  FUNC0 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC3 (struct dmar_unit*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dmar_unit*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct dmar_unit*) ; 
 int /*<<< orphan*/  dmar_inst_rmrr_iter ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct inst_rmrr_iter_args*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,...) ; 

int
FUNC8(struct dmar_unit *dmar)
{
	struct inst_rmrr_iter_args iria;
	int error;

	if (!FUNC3(dmar, DMAR_BARRIER_RMRR))
		return (0);

	error = 0;
	iria.dmar = dmar;
	FUNC6(dmar_inst_rmrr_iter, &iria);
	FUNC0(dmar);
	if (!FUNC2(&dmar->domains)) {
		FUNC1((dmar->hw_gcmd & DMAR_GCMD_TE) == 0,
	    ("dmar%d: RMRR not handled but translation is already enabled",
		    dmar->unit));
		error = FUNC5(dmar);
		if (bootverbose) {
			if (error == 0) {
				FUNC7("dmar%d: enabled translation\n",
				    dmar->unit);
			} else {
				FUNC7("dmar%d: enabling translation failed, "
				    "error %d\n", dmar->unit, error);
			}
		}
	}
	FUNC4(dmar, DMAR_BARRIER_RMRR);
	return (error);
}
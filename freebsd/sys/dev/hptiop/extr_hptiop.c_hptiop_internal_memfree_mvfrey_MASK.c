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
struct hpt_iop_hba {scalar_t__ ctlcfg_dmat; int /*<<< orphan*/  ctlcfg_dmamap; int /*<<< orphan*/  ctlcfg_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct hpt_iop_hba *hba)
{
	if (hba->ctlcfg_dmat) {
		FUNC1(hba->ctlcfg_dmat, hba->ctlcfg_dmamap);
		FUNC2(hba->ctlcfg_dmat,
					hba->ctlcfg_ptr, hba->ctlcfg_dmamap);
		FUNC0(hba->ctlcfg_dmat);
	}

	return 0;
}
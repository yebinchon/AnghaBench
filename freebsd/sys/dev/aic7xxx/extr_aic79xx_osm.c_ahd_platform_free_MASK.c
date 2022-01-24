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
struct ahd_softc {struct ahd_platform_data* platform_data; int /*<<< orphan*/  dev_softc; } ;
struct ahd_platform_data {int /*<<< orphan*/ * eh; int /*<<< orphan*/ * sim; int /*<<< orphan*/  path; int /*<<< orphan*/ * irq; int /*<<< orphan*/  irq_res_type; int /*<<< orphan*/ ** regs; int /*<<< orphan*/ * regs_res_id; int /*<<< orphan*/ * regs_res_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_LOST_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ahd_platform_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  shutdown_final ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void
FUNC8(struct ahd_softc *ahd)
{
	struct ahd_platform_data *pdata;

	pdata = ahd->platform_data;
	if (pdata != NULL) {
		if (pdata->regs[0] != NULL)
			FUNC1(ahd->dev_softc,
					     pdata->regs_res_type[0],
					     pdata->regs_res_id[0],
					     pdata->regs[0]);

		if (pdata->regs[1] != NULL)
			FUNC1(ahd->dev_softc,
					     pdata->regs_res_type[1],
					     pdata->regs_res_id[1],
					     pdata->regs[1]);

		if (pdata->irq != NULL)
			FUNC1(ahd->dev_softc,
					     pdata->irq_res_type,
					     0, pdata->irq);

		if (pdata->sim != NULL) {
			FUNC5(AC_LOST_DEVICE, pdata->path, NULL);
			FUNC7(pdata->path);
			FUNC6(FUNC3(pdata->sim));
			FUNC2(pdata->sim, /*free_devq*/TRUE);
		}
		if (pdata->eh != NULL)
			FUNC0(shutdown_final, pdata->eh);
		FUNC4(ahd->platform_data, M_DEVBUF);
	}
}
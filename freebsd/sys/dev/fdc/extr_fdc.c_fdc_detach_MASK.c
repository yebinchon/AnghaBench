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
struct fdc_data {int flags; int /*<<< orphan*/  fdc_mtx; int /*<<< orphan*/  dmachan; int /*<<< orphan*/  fdc_thread; int /*<<< orphan*/  head; int /*<<< orphan*/ * fdc_intr; int /*<<< orphan*/  res_irq; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FDC_KTHREAD_ALIVE ; 
 int FDC_KTHREAD_EXIT ; 
 int FDC_NODMA ; 
 int /*<<< orphan*/  PRIBIO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct fdc_data* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fdc_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct fdc_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int
FUNC11(device_t dev)
{
	struct	fdc_data *fdc;
	int	error;

	fdc = FUNC2(dev);

	/* have our children detached first */
	if ((error = FUNC0(dev)))
		return (error);

	if (fdc->fdc_intr)
		FUNC1(dev, fdc->res_irq, fdc->fdc_intr);
	fdc->fdc_intr = NULL;

	/* kill worker thread */
	FUNC8(&fdc->fdc_mtx);
	fdc->flags |= FDC_KTHREAD_EXIT;
	FUNC10(&fdc->head);
	while ((fdc->flags & FDC_KTHREAD_ALIVE) != 0)
		FUNC6(fdc->fdc_thread, &fdc->fdc_mtx, PRIBIO, "fdcdet", 0);
	FUNC9(&fdc->fdc_mtx);

	/* reset controller, turn motor off */
	FUNC4(fdc, 0);

	if (!(fdc->flags & FDC_NODMA))
		FUNC5(fdc->dmachan);
	FUNC3(fdc);
	FUNC7(&fdc->fdc_mtx);
	return (0);
}
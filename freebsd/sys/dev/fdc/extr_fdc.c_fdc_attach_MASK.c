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
struct fdc_data {int flags; int /*<<< orphan*/  head; scalar_t__ fdout; int /*<<< orphan*/  fdc_mtx; int /*<<< orphan*/  fdcu; int /*<<< orphan*/  dmachan; int /*<<< orphan*/  fdc_intr; int /*<<< orphan*/  res_irq; int /*<<< orphan*/  fdc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FDC_NEEDS_RESET ; 
 int FDC_NODMA ; 
 int FDC_NOFAST ; 
 int INTR_ENTROPY ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_BIO ; 
 int /*<<< orphan*/  MAX_BYTES_PER_CYL ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct fdc_data*,int /*<<< orphan*/ *) ; 
 struct fdc_data* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct fdc_data*) ; 
 int /*<<< orphan*/ * fdc_intr ; 
 int /*<<< orphan*/ * fdc_intr_fast ; 
 int /*<<< orphan*/  FUNC6 (struct fdc_data*,scalar_t__) ; 
 int hz ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int settle ; 

int
FUNC11(device_t dev)
{
	struct	fdc_data *fdc;
	int	error;

	fdc = FUNC2(dev);
	fdc->fdc_dev = dev;
	error = FUNC5(dev, fdc);
	if (error) {
		FUNC4(dev, "does not respond\n");
		return (error);
	}
	error = FUNC1(dev, fdc->res_irq,
	    INTR_TYPE_BIO | INTR_ENTROPY | 
	    ((fdc->flags & FDC_NOFAST) ? INTR_MPSAFE : 0),		       
            ((fdc->flags & FDC_NOFAST) ? NULL : fdc_intr_fast), 	    
	    ((fdc->flags & FDC_NOFAST) ? fdc_intr : NULL), 
			       fdc, &fdc->fdc_intr);
	if (error) {
		FUNC4(dev, "cannot setup interrupt\n");
		return (error);
	}
	if (!(fdc->flags & FDC_NODMA)) {
		error = FUNC7(fdc->dmachan);
		if (!error) {
			error = FUNC8(fdc->dmachan,
			    MAX_BYTES_PER_CYL, M_WAITOK);
			if (error)
				FUNC9(fdc->dmachan);
		}
		if (error)
			return (error);
	}
	fdc->fdcu = FUNC3(dev);
	fdc->flags |= FDC_NEEDS_RESET;

	FUNC10(&fdc->fdc_mtx, "fdc lock", NULL, MTX_DEF);

	/* reset controller, turn motor off, clear fdout mirror reg */
	FUNC6(fdc, fdc->fdout = 0);
	FUNC0(&fdc->head);

	settle = hz / 8;

	return (0);
}
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
struct fdc_data {int flags; int retry; int /*<<< orphan*/  fdc_mtx; int /*<<< orphan*/ * bp; } ;

/* Variables and functions */
 int FDC_KTHREAD_ALIVE ; 
 int FDC_KTHREAD_EXIT ; 
 int debugflags ; 
 int FUNC0 (struct fdc_data*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int retry_line ; 

__attribute__((used)) static void
FUNC6(void *arg)
{
	struct fdc_data *fdc;

	fdc = arg;
	int i;

	FUNC3(&fdc->fdc_mtx);
	fdc->flags |= FDC_KTHREAD_ALIVE;
	while ((fdc->flags & FDC_KTHREAD_EXIT) == 0) {
		FUNC4(&fdc->fdc_mtx);
		i = FUNC0(fdc);
		if (i && debugflags & 0x20) {
			if (fdc->bp != NULL)
				FUNC1("", fdc->bp, "");
			FUNC5("Retry line %d\n", retry_line);
		}
		fdc->retry += i;
		FUNC3(&fdc->fdc_mtx);
	}
	fdc->flags &= ~(FDC_KTHREAD_EXIT | FDC_KTHREAD_ALIVE);
	FUNC4(&fdc->fdc_mtx);

	FUNC2(0);
}
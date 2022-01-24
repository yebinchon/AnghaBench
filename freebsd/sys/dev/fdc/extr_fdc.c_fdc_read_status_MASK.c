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
struct fdc_data {int* status; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FDC_STAT_VALID ; 
 int FUNC0 (struct fdc_data*,int*) ; 

__attribute__((used)) static int
FUNC1(struct fdc_data *fdc)
{
	int i, ret, status;

	for (i = ret = 0; i < 7; i++) {
		ret = FUNC0(fdc, &status);
		fdc->status[i] = status;
		if (ret != 0)
			break;
	}

	if (ret == 0)
		fdc->flags |= FDC_STAT_VALID;
	else
		fdc->flags &= ~FDC_STAT_VALID;

	return ret;
}
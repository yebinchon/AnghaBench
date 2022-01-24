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
struct dataset {int n; int lpoints; double* points; double sy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 double* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (double*) ; 
 int /*<<< orphan*/  FUNC3 (double*,double*,int) ; 

__attribute__((used)) static void
FUNC4(struct dataset *ds, double a)
{
	double *dp;

	if (ds->n >= ds->lpoints) {
		dp = ds->points;
		ds->lpoints *= 4;
		ds->points = FUNC1(sizeof *ds->points, ds->lpoints);
		FUNC0(ds->points != NULL);
		FUNC3(ds->points, dp, sizeof *dp * ds->n);
		FUNC2(dp);
	}
	ds->points[ds->n++] = a;
	ds->sy += a;
}
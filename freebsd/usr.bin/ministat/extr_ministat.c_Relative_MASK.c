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
struct dataset {int n; } ;

/* Variables and functions */
 double FUNC0 (struct dataset*) ; 
 int NSTUDENT ; 
 int FUNC1 (struct dataset*) ; 
 double FUNC2 (double) ; 
 int /*<<< orphan*/  FUNC3 (char*,double,...) ; 
 double FUNC4 (double) ; 
 double** student ; 
 double* studentpct ; 

__attribute__((used)) static void
FUNC5(struct dataset *ds, struct dataset *rs, int confidx)
{
	double spool, s, d, e, t;
	double re;
	int i;

	i = ds->n + rs->n - 2;
	if (i > NSTUDENT)
		t = student[0][confidx];
	else
		t = student[i][confidx];
	spool = (ds->n - 1) * FUNC1(ds) + (rs->n - 1) * FUNC1(rs);
	spool /= ds->n + rs->n - 2;
	spool = FUNC4(spool);
	s = spool * FUNC4(1.0 / ds->n + 1.0 / rs->n);
	d = FUNC0(ds) - FUNC0(rs);
	e = t * s;

	re = (ds->n - 1) * FUNC1(ds) + (rs->n - 1) * FUNC1(rs) *
	    (FUNC0(ds) * FUNC0(ds)) / (FUNC0(rs) * FUNC0(rs));
	re *= (ds->n + rs->n) / (ds->n * rs->n * (ds->n + rs->n - 2.0));
	re = t * FUNC4(re);

	if (FUNC2(d) > e) {

		FUNC3("Difference at %.1f%% confidence\n", studentpct[confidx]);
		FUNC3("	%g +/- %g\n", d, e);
		FUNC3("	%g%% +/- %g%%\n", d * 100 / FUNC0(rs), re * 100 / FUNC0(rs));
		FUNC3("	(Student's t, pooled s = %g)\n", spool);
	} else {
		FUNC3("No difference proven at %.1f%% confidence\n",
		    studentpct[confidx]);
	}
}
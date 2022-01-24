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
struct dataset {int lpoints; int /*<<< orphan*/  syy; int /*<<< orphan*/ * points; } ;

/* Variables and functions */
 int /*<<< orphan*/  NAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int,int) ; 

__attribute__((used)) static struct dataset *
FUNC2(void)
{
	struct dataset *ds;

	ds = FUNC1(1, sizeof *ds);
	FUNC0(ds != NULL);
	ds->lpoints = 100000;
	ds->points = FUNC1(sizeof *ds->points, ds->lpoints);
	FUNC0(ds->points != NULL);
	ds->syy = NAN;
	return(ds);
}
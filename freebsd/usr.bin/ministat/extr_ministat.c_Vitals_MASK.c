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
 double FUNC1 (struct dataset*) ; 
 double FUNC2 (struct dataset*) ; 
 double FUNC3 (struct dataset*) ; 
 double FUNC4 (struct dataset*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int* symbol ; 

__attribute__((used)) static void
FUNC6(struct dataset *ds, int flag)
{

	FUNC5("%c %3d %13.8g %13.8g %13.8g %13.8g %13.8g", symbol[flag],
	    ds->n, FUNC3(ds), FUNC1(ds), FUNC2(ds), FUNC0(ds), FUNC4(ds));
	FUNC5("\n");
}
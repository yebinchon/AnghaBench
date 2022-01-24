#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int** pwrPdg; int** vpdPdg; int** pcdac; int** empty; } ;
typedef  TYPE_1__ CAL_DATA_PER_FREQ_OP_LOOP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void
FUNC1(CAL_DATA_PER_FREQ_OP_LOOP *f)
{
	int i, j;
	for (i = 0; i < 2; i++) {
		FUNC0("    Gain: %d:\n", i);
		for (j = 0; j < 5; j++) {
			FUNC0("      %d: pwrPdg: %d, vpdPdg: %d, pcdac: %d, empty: %d\n",
			    j, f->pwrPdg[i][j], f->vpdPdg[i][j], f->pcdac[i][j], f->empty[i][j]);
		}
		FUNC0("\n");
	}
}
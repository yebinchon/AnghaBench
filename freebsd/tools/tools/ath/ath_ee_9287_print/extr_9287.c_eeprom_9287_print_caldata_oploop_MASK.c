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
struct cal_data_op_loop_ar9287 {int** pwrPdg; int** vpdPdg; int** pcdac; int** empty; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void
FUNC1(struct cal_data_op_loop_ar9287 *f)
{
	int i, j;

	/* XXX flesh out the rest */
	for (i = 0; i < 2; i++) {
		FUNC0("    pwrPdg:");
		for (j = 0; j < 5; j++) {
			FUNC0("[%d][%d]=%d, ", i, j, f->pwrPdg[i][j]);
		}
		FUNC0("\n");

		FUNC0("    vpdPdg:");
		for (j = 0; j < 5; j++) {
			FUNC0("[%d][%d]=%d, ", i, j, f->vpdPdg[i][j]);
		}
		FUNC0("\n");

		FUNC0("    pcdac:");
		for (j = 0; j < 5; j++) {
			FUNC0("[%d][%d]=%d, ", i, j, f->pcdac[i][j]);
		}
		FUNC0("\n");

		FUNC0("    empty:");
		for (j = 0; j < 5; j++) {
			FUNC0("[%d][%d]=%d, ", i, j, f->empty[i][j]);
		}
		FUNC0("\n\n");
	}
}
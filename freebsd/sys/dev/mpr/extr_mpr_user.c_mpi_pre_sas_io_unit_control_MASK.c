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
struct mpr_usr_command {int dummy; } ;
struct mpr_command {scalar_t__ cm_sglsize; int /*<<< orphan*/ * cm_sge; } ;

/* Variables and functions */

__attribute__((used)) static int
FUNC0(struct mpr_command *cm,
			     struct mpr_usr_command *cmd)
{

	cm->cm_sge = NULL;
	cm->cm_sglsize = 0;
	return (0);
}
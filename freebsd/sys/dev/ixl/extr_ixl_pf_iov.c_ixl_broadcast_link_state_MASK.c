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
struct ixl_pf {int num_vfs; int /*<<< orphan*/ * vfs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ixl_pf*,int /*<<< orphan*/ *) ; 

void
FUNC1(struct ixl_pf *pf)
{
	int i;

	for (i = 0; i < pf->num_vfs; i++)
		FUNC0(pf, &pf->vfs[i]);
}
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
struct bcma_intr {int /*<<< orphan*/  i_sel; int /*<<< orphan*/  i_mapped; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_BHND ; 
 int /*<<< orphan*/  FUNC1 (struct bcma_intr*,int /*<<< orphan*/ ) ; 

void
FUNC2(struct bcma_intr *intr)
{
	FUNC0(!intr->i_mapped, ("interrupt %u still mapped", intr->i_sel));

	FUNC1(intr, M_BHND);
}
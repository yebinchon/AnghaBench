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
struct intr_irqsrc {int isrc_flags; } ;

/* Variables and functions */
 int INTR_ISRCF_IPI ; 
 int FUNC0 (struct intr_irqsrc*) ; 
 int /*<<< orphan*/  FUNC1 (struct intr_irqsrc*) ; 
 int /*<<< orphan*/  isrc_table_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(struct intr_irqsrc *isrc)
{
	int error;

	FUNC2(&isrc_table_lock);
	if ((isrc->isrc_flags & INTR_ISRCF_IPI) == 0)
		FUNC1(isrc);
	error = FUNC0(isrc);
	FUNC3(&isrc_table_lock);
	return (error);
}
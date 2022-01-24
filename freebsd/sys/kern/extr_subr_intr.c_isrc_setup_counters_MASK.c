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
typedef  size_t u_int ;
struct intr_irqsrc {size_t isrc_index; int /*<<< orphan*/ * isrc_count; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * intrcnt ; 
 int /*<<< orphan*/  intrcnt_index ; 
 int /*<<< orphan*/  FUNC1 (struct intr_irqsrc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct intr_irqsrc *isrc)
{
	u_int index;

	/*
	 *  XXX - it does not work well with removable controllers and
	 *        interrupt sources !!!
	 */
	index = FUNC0(&intrcnt_index, 2);
	isrc->isrc_index = index;
	isrc->isrc_count = &intrcnt[index];
	FUNC1(isrc, NULL);
}
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
typedef  int /*<<< orphan*/  ttyinq_line_iterator_t ;
struct ttyinq {int /*<<< orphan*/  ti_reprintblock; int /*<<< orphan*/  ti_reprint; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ttyinq*,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC1(struct ttyinq *ti,
    ttyinq_line_iterator_t *iterator, void *data)
{

	FUNC0(ti, iterator, data,
	    ti->ti_reprint, ti->ti_reprintblock);
}
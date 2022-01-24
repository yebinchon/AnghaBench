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
struct pfr_table {scalar_t__ pfrt_fback; scalar_t__ pfrt_flags; int /*<<< orphan*/  pfrt_name; int /*<<< orphan*/  pfrt_anchor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pfr_table*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

void
FUNC2(struct pfr_table *tbl)
{
	FUNC0(tbl, sizeof(struct pfr_table));
	FUNC1(tbl->pfrt_anchor, "anchor");
	FUNC1(tbl->pfrt_name, "name");
	tbl->pfrt_flags = 0;
	tbl->pfrt_fback = 0;
}
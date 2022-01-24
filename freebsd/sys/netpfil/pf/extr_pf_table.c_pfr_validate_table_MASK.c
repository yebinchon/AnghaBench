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
struct pfr_table {int pfrt_flags; int /*<<< orphan*/  pfrt_anchor; scalar_t__* pfrt_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  PF_RESERVED_ANCHOR ; 
 int PF_TABLE_NAME_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__*) ; 

__attribute__((used)) static int
FUNC3(struct pfr_table *tbl, int allowedflags, int no_reserved)
{
	int i;

	if (!tbl->pfrt_name[0])
		return (-1);
	if (no_reserved && !FUNC1(tbl->pfrt_anchor, PF_RESERVED_ANCHOR))
		 return (-1);
	if (tbl->pfrt_name[PF_TABLE_NAME_SIZE-1])
		return (-1);
	for (i = FUNC2(tbl->pfrt_name); i < PF_TABLE_NAME_SIZE; i++)
		if (tbl->pfrt_name[i])
			return (-1);
	if (FUNC0(tbl->pfrt_anchor))
		return (-1);
	if (tbl->pfrt_flags & ~allowedflags)
		return (-1);
	return (0);
}
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
struct printer_entry {int dummy; } ;

/* Variables and functions */
 struct printer_entry* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct printer_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct printer_entry*) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  printer_tbl ; 

void
FUNC3(void)
{
	struct printer_entry *n1;

	while ((n1 = FUNC0(&printer_tbl)) != NULL) {
		FUNC1(&printer_tbl, n1, link);
		FUNC2(n1);
	}
}
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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct printer_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct printer_entry*) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  printer_tbl ; 

__attribute__((used)) static void
FUNC3(struct printer_entry *entry)
{

	FUNC1(entry != NULL);
	if (entry == NULL)
		return;

	FUNC0(&printer_tbl, entry, link);
	FUNC2(entry);
}
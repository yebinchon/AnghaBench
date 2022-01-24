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
struct swrun_entry {struct swrun_entry* parameters; struct swrun_entry* path; struct swrun_entry* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct swrun_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct swrun_entry*) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  swrun_tbl ; 

__attribute__((used)) static void
FUNC3(struct swrun_entry *entry)
{

	FUNC1(entry != NULL);

	FUNC0(&swrun_tbl, entry, link);

	FUNC2(entry->name);
	FUNC2(entry->path);
	FUNC2(entry->parameters);
	FUNC2(entry);
}
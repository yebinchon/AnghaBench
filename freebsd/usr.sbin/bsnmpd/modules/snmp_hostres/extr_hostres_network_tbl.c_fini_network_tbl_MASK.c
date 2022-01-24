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
struct network_entry {int dummy; } ;

/* Variables and functions */
 struct network_entry* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct network_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct network_entry*) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  network_tbl ; 

void
FUNC3(void)
{
	struct network_entry *n1;

	while ((n1 = FUNC0(&network_tbl)) != NULL) {
		FUNC1(&network_tbl, n1, link);
		FUNC2(n1);
	}
}
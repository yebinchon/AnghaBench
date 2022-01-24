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
struct processor_entry {int dummy; } ;

/* Variables and functions */
 struct processor_entry* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct processor_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ detected_processor_count ; 
 int /*<<< orphan*/  FUNC3 (struct processor_entry*) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  processor_tbl ; 

__attribute__((used)) static void
FUNC4(void)
{
	struct processor_entry *n1;

	while ((n1 = FUNC0(&processor_tbl)) != NULL) {
		FUNC1(&processor_tbl, n1, link);
		FUNC3(n1);
		detected_processor_count--;
	}

	FUNC2(detected_processor_count == 0);
	detected_processor_count = 0;
}
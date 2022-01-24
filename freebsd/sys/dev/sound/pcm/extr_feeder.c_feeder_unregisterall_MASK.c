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
struct feedertab_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_FEEDER ; 
 struct feedertab_entry* FUNC0 (int /*<<< orphan*/ *) ; 
 struct feedertab_entry* FUNC1 (struct feedertab_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  feedertab ; 
 int /*<<< orphan*/  FUNC2 (struct feedertab_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 

__attribute__((used)) static void
FUNC3(void *p)
{
	struct feedertab_entry *fte, *next;

	next = FUNC0(&feedertab);
	while (next != NULL) {
		fte = next;
		next = FUNC1(fte, link);
		FUNC2(fte, M_FEEDER);
	}
}
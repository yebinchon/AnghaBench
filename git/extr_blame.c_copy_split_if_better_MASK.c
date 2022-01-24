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
struct blame_scoreboard {int dummy; } ;
struct blame_entry {scalar_t__ suspect; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct blame_scoreboard*,struct blame_entry*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct blame_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct blame_entry*,struct blame_entry*,int) ; 

__attribute__((used)) static void FUNC4(struct blame_scoreboard *sb,
				 struct blame_entry *best_so_far,
				 struct blame_entry *potential)
{
	int i;

	if (!potential[1].suspect)
		return;
	if (best_so_far[1].suspect) {
		if (FUNC0(sb, &potential[1]) <
		    FUNC0(sb, &best_so_far[1]))
			return;
	}

	for (i = 0; i < 3; i++)
		FUNC1(potential[i].suspect);
	FUNC2(best_so_far);
	FUNC3(best_so_far, potential, sizeof(struct blame_entry[3]));
}
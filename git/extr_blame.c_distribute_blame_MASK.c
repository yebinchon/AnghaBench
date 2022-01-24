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
struct blame_origin {int dummy; } ;
struct blame_entry {struct blame_entry* next; struct blame_origin* suspect; } ;

/* Variables and functions */
 int /*<<< orphan*/  compare_blame_suspect ; 
 int /*<<< orphan*/  get_next_blame ; 
 struct blame_entry* FUNC0 (struct blame_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct blame_scoreboard*,struct blame_origin*,struct blame_entry*) ; 
 struct blame_entry* FUNC2 (struct blame_entry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  set_next_blame ; 

__attribute__((used)) static void FUNC3(struct blame_scoreboard *sb, struct blame_entry *blamed)
{
	blamed = FUNC0(blamed, get_next_blame, set_next_blame,
				 compare_blame_suspect);
	while (blamed)
	{
		struct blame_origin *porigin = blamed->suspect;
		struct blame_entry *suspects = NULL;
		do {
			struct blame_entry *next = blamed->next;
			blamed->next = suspects;
			suspects = blamed;
			blamed = next;
		} while (blamed && blamed->suspect == porigin);
		suspects = FUNC2(suspects, NULL);
		FUNC1(sb, porigin, suspects);
	}
}
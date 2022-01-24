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
struct blame_entry {int score; scalar_t__ num_lines; scalar_t__ lno; } ;

/* Variables and functions */
 char* FUNC0 (struct blame_scoreboard*,scalar_t__) ; 
 scalar_t__ FUNC1 (unsigned int) ; 

unsigned FUNC2(struct blame_scoreboard *sb, struct blame_entry *e)
{
	unsigned score;
	const char *cp, *ep;

	if (e->score)
		return e->score;

	score = 1;
	cp = FUNC0(sb, e->lno);
	ep = FUNC0(sb, e->lno + e->num_lines);
	while (cp < ep) {
		unsigned ch = *((unsigned char *)cp);
		if (FUNC1(ch))
			score++;
		cp++;
	}
	e->score = score;
	return score;
}
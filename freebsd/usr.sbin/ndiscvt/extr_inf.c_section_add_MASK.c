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
struct section {char const* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct section*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct section*,int) ; 
 int /*<<< orphan*/  link ; 
 struct section* FUNC2 (int) ; 
 int /*<<< orphan*/  sh ; 

void
FUNC3 (const char *s)
{
	struct section *sec;

	sec = FUNC2(sizeof(struct section));
	FUNC1(sec, sizeof(struct section));
	sec->name = s;
	FUNC0(&sh, sec, link);

	return;
}
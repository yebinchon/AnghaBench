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
struct assign {void** vals; void* key; int /*<<< orphan*/  section; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct assign*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ah ; 
 int /*<<< orphan*/  FUNC2 (struct assign*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int idx ; 
 int /*<<< orphan*/  link ; 
 struct assign* FUNC4 (int) ; 
 int /*<<< orphan*/  section_head ; 
 int /*<<< orphan*/  sh ; 
 void* FUNC5 (char const*) ; 
 char const** words ; 

void
FUNC6 (const char *a)
{
	struct assign *assign;
	int i;

	assign = FUNC4(sizeof(struct assign));
	FUNC2(assign, sizeof(struct assign));
	assign->section = FUNC1(&sh, section_head);
	assign->key = FUNC5(a);
	for (i = 0; i < idx; i++)
		assign->vals[(idx - 1) - i] = FUNC5(words[i]);
	FUNC0(&ah, assign, link);

	FUNC3();
	return;
}
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
struct enum_pairs {struct enum_pairs* enum_str; } ;
struct enum_pair {struct enum_pair* enum_str; } ;

/* Variables and functions */
 struct enum_pairs* FUNC0 (struct enum_pairs*) ; 
 int /*<<< orphan*/  FUNC1 (struct enum_pairs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct enum_pairs*) ; 
 int /*<<< orphan*/  link ; 

void
FUNC3(struct enum_pairs *headp)
{
	struct enum_pair *e;

	if (headp == NULL)
		return;

	while ((e = FUNC0(headp)) != NULL) {
		FUNC1(headp, link);

		if (e->enum_str)
			FUNC2(e->enum_str);
		FUNC2(e);
	}

	FUNC2(headp);
}
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
typedef  int /*<<< orphan*/  wchar_t ;
struct csnode {struct csnode* csn_right; struct csnode* csn_left; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct csnode*,int /*<<< orphan*/ ) ; 
 struct csnode* FUNC2 (struct csnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct csnode*) ; 

__attribute__((used)) static struct csnode *
FUNC4(struct csnode *t, wchar_t ch)
{
	struct csnode *x;

	FUNC0(t != NULL);
	t = FUNC2(t, ch);
	FUNC0(FUNC1(t, ch) == 0);
	if (t->csn_left == NULL)
		x = t->csn_right;
	else {
		x = FUNC2(t->csn_left, ch);
		x->csn_right = t->csn_right;
	}
	FUNC3(t);
	return x;
}
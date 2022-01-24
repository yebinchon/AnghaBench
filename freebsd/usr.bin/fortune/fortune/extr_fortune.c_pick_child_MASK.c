#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {unsigned int str_numstr; } ;
struct TYPE_7__ {unsigned int num_children; TYPE_1__ tbl; int /*<<< orphan*/  name; struct TYPE_7__* next; struct TYPE_7__* child; } ;
typedef  TYPE_2__ FILEDESC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ Equal_probs ; 
 int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static FILEDESC *
FUNC3(FILEDESC *parent)
{
	FILEDESC	*fp;
	int		choice;

	if (Equal_probs) {
		choice = FUNC1(parent->num_children);
		FUNC0(1, (stderr, "    choice = %d (of %d)\n",
			    choice, parent->num_children));
		for (fp = parent->child; choice--; fp = fp->next)
			continue;
		FUNC0(1, (stderr, "    using %s\n", fp->name));
		return (fp);
	}
	else {
		FUNC2(parent);
		choice = FUNC1(parent->tbl.str_numstr);
		FUNC0(1, (stderr, "    choice = %d (of %u)\n",
			    choice, parent->tbl.str_numstr));
		for (fp = parent->child; (unsigned)choice >= fp->tbl.str_numstr;
		     fp = fp->next) {
			choice -= fp->tbl.str_numstr;
			FUNC0(1, (stderr, "\tskip %s, %u (choice = %d)\n",
				    fp->name, fp->tbl.str_numstr, choice));
		}
		FUNC0(1, (stderr, "    using %s, %u\n", fp->name,
			    fp->tbl.str_numstr));
		return (fp);
	}
}
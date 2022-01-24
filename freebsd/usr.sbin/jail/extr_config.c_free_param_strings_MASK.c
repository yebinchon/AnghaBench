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
struct cfvar {int /*<<< orphan*/  vars; struct cfvar* name; struct cfvar* s; } ;
struct cfstring {int /*<<< orphan*/  vars; struct cfstring* name; struct cfstring* s; } ;
struct cfparam {int /*<<< orphan*/  val; } ;

/* Variables and functions */
 struct cfvar* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct cfvar* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct cfvar*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cfvar*) ; 
 int /*<<< orphan*/  tq ; 

__attribute__((used)) static void
FUNC5(struct cfparam *p)
{
	struct cfstring *s;
	struct cfvar *v;

	while ((s = FUNC2(&p->val))) {
		FUNC4(s->s);
		while ((v = FUNC0(&s->vars))) {
			FUNC4(v->name);
			FUNC1(&s->vars, tq);
			FUNC4(v);
		}
		FUNC3(&p->val, s, tq);
		FUNC4(s);
	}
}
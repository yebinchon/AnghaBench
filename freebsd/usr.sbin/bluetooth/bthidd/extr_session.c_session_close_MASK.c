#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* bthid_session_p ;
struct TYPE_8__ {int intr; int ctrl; int vkbd; int umouse; int ukbd; struct TYPE_8__* keys2; struct TYPE_8__* keys1; struct TYPE_8__* ctx; TYPE_1__* srv; } ;
struct TYPE_7__ {int maxfd; int /*<<< orphan*/  rfdset; int /*<<< orphan*/  wfdset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  next ; 

void
FUNC6(bthid_session_p s)
{
	FUNC2(s != NULL);
	FUNC2(s->srv != NULL);

	FUNC1(s, next);

	if (s->intr != -1) {
		FUNC0(s->intr, &s->srv->rfdset);
		FUNC0(s->intr, &s->srv->wfdset);
		FUNC3(s->intr);

		if (s->srv->maxfd == s->intr)
			s->srv->maxfd --;
	}

	if (s->ctrl != -1) {
		FUNC0(s->ctrl, &s->srv->rfdset);
		FUNC0(s->ctrl, &s->srv->wfdset);
		FUNC3(s->ctrl);

		if (s->srv->maxfd == s->ctrl)
			s->srv->maxfd --;
	}

	if (s->vkbd != -1) {
		FUNC0(s->vkbd, &s->srv->rfdset);
		FUNC3(s->vkbd);

		if (s->srv->maxfd == s->vkbd)
			s->srv->maxfd --;
	}

	if (s->umouse != -1)
		FUNC3(s->umouse);

	if (s->ukbd != -1) {
		FUNC0(s->ukbd, &s->srv->rfdset);
		FUNC3(s->ukbd);

		if (s->srv->maxfd == s->ukbd)
			s->srv->maxfd --;
	}

	FUNC4(s->ctx);
	FUNC4(s->keys1);
	FUNC4(s->keys2);

	FUNC5(s, 0, sizeof(*s));
	FUNC4(s);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* hid_device_p ;
typedef  TYPE_2__* bthid_session_p ;
typedef  TYPE_3__* bthid_server_p ;
struct TYPE_11__ {int /*<<< orphan*/  sessions; } ;
struct TYPE_10__ {int ctrl; int intr; int vkbd; int ukbd; int umouse; struct TYPE_10__* keys1; int /*<<< orphan*/ * keys2; scalar_t__ obutt; int /*<<< orphan*/  state; int /*<<< orphan*/ * ctx; int /*<<< orphan*/  bdaddr; TYPE_3__* srv; } ;
struct TYPE_9__ {int /*<<< orphan*/  bdaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOSED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  next ; 

bthid_session_p
FUNC7(bthid_server_p srv, hid_device_p const d)
{
	bthid_session_p	s;

	FUNC1(srv != NULL);
	FUNC1(d != NULL);

	if ((s = (bthid_session_p) FUNC5(sizeof(*s))) == NULL)
		return (NULL);

	s->srv = srv;  
	FUNC6(&s->bdaddr, &d->bdaddr, sizeof(s->bdaddr));
	s->ctrl = -1;
	s->intr = -1;
	s->vkbd = -1;
	s->ctx = NULL;
	s->state = CLOSED;
	s->ukbd = -1;
	s->umouse = -1;
	s->obutt = 0;

	s->keys1 = FUNC2(FUNC4());
	if (s->keys1 == NULL) {
		FUNC3(s);
		return (NULL);
	}

	s->keys2 = FUNC2(FUNC4());
	if (s->keys2 == NULL) {
		FUNC3(s->keys1);
		FUNC3(s);
		return (NULL);
	}

	FUNC0(&srv->sessions, s, next);

	return (s);
}
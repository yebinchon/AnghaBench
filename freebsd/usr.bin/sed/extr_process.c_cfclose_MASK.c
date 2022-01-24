#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int fd; struct s_command* c; TYPE_1__* s; } ;
struct s_command {int code; struct s_command* next; TYPE_2__ u; int /*<<< orphan*/  t; } ;
struct TYPE_3__ {int wfd; int /*<<< orphan*/  wfile; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 

void
FUNC2(struct s_command *cp, struct s_command *end)
{

	for (; cp != end; cp = cp->next)
		switch(cp->code) {
		case 's':
			if (cp->u.s->wfd != -1 && FUNC0(cp->u.s->wfd))
				FUNC1(1, "%s", cp->u.s->wfile);
			cp->u.s->wfd = -1;
			break;
		case 'w':
			if (cp->u.fd != -1 && FUNC0(cp->u.fd))
				FUNC1(1, "%s", cp->t);
			cp->u.fd = -1;
			break;
		case '{':
			FUNC2(cp->u.c, cp->next);
			break;
		}
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct kevent {int dummy; } ;
struct dcons_port {int /*<<< orphan*/  infd; int /*<<< orphan*/  outfd; } ;
struct TYPE_2__ {int /*<<< orphan*/  zero; int /*<<< orphan*/  kq; int /*<<< orphan*/  traw; struct dcons_port* port; } ;

/* Variables and functions */
 size_t DCONS_CON ; 
 int /*<<< orphan*/  EVFILT_READ ; 
 int /*<<< orphan*/  EV_ADD ; 
 int /*<<< orphan*/  FUNC0 (struct kevent*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,void*) ; 
 int /*<<< orphan*/  NOTE_LOWAT ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  TCSADRAIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct kevent*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__ sc ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ tc_set ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(int s)
{
	struct kevent kev;
	struct dcons_port *p;
	char buf[256];

	p = &sc.port[DCONS_CON];

	FUNC2(buf, 256, "\r\n[child exit]\r\n");
	FUNC5(p->outfd, buf, FUNC3(buf));

	if (tc_set)
		FUNC4(STDIN_FILENO, TCSADRAIN, &sc.traw);

	FUNC0(&kev, p->infd, EVFILT_READ, EV_ADD, NOTE_LOWAT, 1, (void *)p);
	FUNC1(sc.kq, &kev, 1, NULL, 0, &sc.zero);
}
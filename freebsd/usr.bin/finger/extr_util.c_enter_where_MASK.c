#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  tv_sec; } ;
struct utmpx {TYPE_1__ ut_tv; int /*<<< orphan*/  ut_host; int /*<<< orphan*/  ut_line; } ;
struct TYPE_6__ {int /*<<< orphan*/  loginat; int /*<<< orphan*/  host; int /*<<< orphan*/  tty; int /*<<< orphan*/  info; } ;
typedef  TYPE_2__ WHERE ;
typedef  int /*<<< orphan*/  PERSON ;

/* Variables and functions */
 int /*<<< orphan*/  LOGGEDIN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct utmpx *ut, PERSON *pn)
{
	WHERE *w;

	w = FUNC2(pn);
	w->info = LOGGEDIN;
	FUNC1(w->tty, ut->ut_line);
	FUNC1(w->host, ut->ut_host);
	w->loginat = ut->ut_tv.tv_sec;
	FUNC0(w);
}
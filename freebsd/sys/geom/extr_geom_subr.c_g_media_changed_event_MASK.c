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
struct g_provider {scalar_t__ acw; scalar_t__ error; TYPE_1__* geom; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int EV_CANCEL ; 
 int G_GEOM_WITHER ; 
 int /*<<< orphan*/  FUNC0 (struct g_provider*) ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  g_new_provider_event ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct g_provider*,int /*<<< orphan*/ ,struct g_provider*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void
FUNC4(void *arg, int flag)
{
	struct g_provider *pp;
	int retaste;

	FUNC3();
	if (flag == EV_CANCEL)
		return;
	pp = arg;
	FUNC0(pp);

	/*
	 * If provider was not open for writing, queue retaste after spoiling.
	 * If it was, retaste will happen automatically on close.
	 */
	retaste = (pp->acw == 0 && pp->error == 0 &&
	    !(pp->geom->flags & G_GEOM_WITHER));
	FUNC2(arg, flag);
	if (retaste)
		FUNC1(g_new_provider_event, pp, M_WAITOK, pp, NULL);
}
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
typedef  int uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  channel; } ;
struct atiixp_info {scalar_t__ polling; TYPE_1__ rch; TYPE_1__ pch; int /*<<< orphan*/  poll_timer; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct atiixp_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct atiixp_info*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct atiixp_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,void (*) (void*),struct atiixp_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(void *arg)
{
	struct atiixp_info *sc = arg;
	uint32_t trigger = 0;

	if (sc == NULL)
		return;

	FUNC1(sc);
	if (sc->polling == 0 || FUNC0(sc) == 0) {
		FUNC3(sc);
		return;
	}

	trigger |= (FUNC2(&sc->pch) != 0) ? 1 : 0;
	trigger |= (FUNC2(&sc->rch) != 0) ? 2 : 0;

	/* XXX */
	FUNC4(&sc->poll_timer, 1/*sc->poll_ticks*/,
	    atiixp_poll_callback, sc);

	FUNC3(sc);

	if (trigger & 1)
		FUNC5(sc->pch.channel);
	if (trigger & 2)
		FUNC5(sc->rch.channel);
}
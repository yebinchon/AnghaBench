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
struct task {int dummy; } ;
struct hn_softc {int /*<<< orphan*/  hn_mgmt_taskq0; int /*<<< orphan*/  hn_netchg_status; int /*<<< orphan*/  hn_netchg_init; int /*<<< orphan*/  hn_prichan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hn_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct task*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hn_softc*) ; 
 int /*<<< orphan*/  hn_suspend_mgmt_taskfunc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct task*) ; 

__attribute__((used)) static void
FUNC6(struct hn_softc *sc)
{
	struct task task;

	FUNC0(sc);

	/*
	 * Make sure that hn_mgmt_taskq0 can nolonger be accessed
	 * through hn_mgmt_taskq.
	 */
	FUNC1(&task, 0, hn_suspend_mgmt_taskfunc, sc);
	FUNC5(sc->hn_prichan, &task);

	/*
	 * Make sure that all pending management tasks are completed.
	 */
	FUNC2(sc->hn_mgmt_taskq0, &sc->hn_netchg_init);
	FUNC4(sc->hn_mgmt_taskq0, &sc->hn_netchg_status);
	FUNC3(sc->hn_mgmt_taskq0);
}
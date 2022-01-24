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
struct rtwn_softc {int /*<<< orphan*/  cmdq_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rtwn_softc*) ; 
 int /*<<< orphan*/  rtwn_cmdq_cb ; 

void
FUNC2(struct rtwn_softc *sc)
{
	FUNC0(sc);
	FUNC1(&sc->cmdq_task, 0, rtwn_cmdq_cb, sc);
}
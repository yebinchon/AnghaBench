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
typedef  int uint16_t ;
struct rl_softc {int /*<<< orphan*/  rl_inttask; } ;

/* Variables and functions */
 int FUNC0 (struct rl_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rl_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FILTER_HANDLED ; 
 int FILTER_STRAY ; 
 int /*<<< orphan*/  RL_IMR ; 
 int RL_INTRS_CPLUS ; 
 int /*<<< orphan*/  RL_ISR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_fast ; 

__attribute__((used)) static int
FUNC3(void *arg)
{
	struct rl_softc		*sc;
	uint16_t		status;

	sc = arg;

	status = FUNC0(sc, RL_ISR);
	if (status == 0xFFFF || (status & RL_INTRS_CPLUS) == 0)
                return (FILTER_STRAY);
	FUNC1(sc, RL_IMR, 0);

	FUNC2(taskqueue_fast, &sc->rl_inttask);

	return (FILTER_HANDLED);
}
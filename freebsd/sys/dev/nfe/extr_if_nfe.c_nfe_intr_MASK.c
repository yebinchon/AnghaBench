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
typedef  int uint32_t ;
struct nfe_softc {int /*<<< orphan*/  nfe_int_task; int /*<<< orphan*/  nfe_tq; int /*<<< orphan*/  nfe_irq_status; } ;

/* Variables and functions */
 int FILTER_HANDLED ; 
 int FILTER_STRAY ; 
 int FUNC0 (struct nfe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfe_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(void *arg)
{
	struct nfe_softc *sc;
	uint32_t status;

	sc = (struct nfe_softc *)arg;

	status = FUNC0(sc, sc->nfe_irq_status);
	if (status == 0 || status == 0xffffffff)
		return (FILTER_STRAY);
	FUNC1(sc);
	FUNC2(sc->nfe_tq, &sc->nfe_int_task);

	return (FILTER_HANDLED);
}
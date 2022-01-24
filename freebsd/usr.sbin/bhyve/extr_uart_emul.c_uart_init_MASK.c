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
typedef  void* uart_intr_func_t ;
struct uart_softc {int /*<<< orphan*/  mtx; void* intr_deassert; void* intr_assert; void* arg; } ;

/* Variables and functions */
 struct uart_softc* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_softc*) ; 

struct uart_softc *
FUNC3(uart_intr_func_t intr_assert, uart_intr_func_t intr_deassert,
    void *arg)
{
	struct uart_softc *sc;

	sc = FUNC0(1, sizeof(struct uart_softc));

	sc->arg = arg;
	sc->intr_assert = intr_assert;
	sc->intr_deassert = intr_deassert;

	FUNC1(&sc->mtx, NULL);

	FUNC2(sc);

	return (sc);
}
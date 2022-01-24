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
struct lpc_uart_softc {scalar_t__ irq; } ;
struct TYPE_2__ {int /*<<< orphan*/  pi_vmctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* lpc_bridge ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC2(void *arg)
{
	struct lpc_uart_softc *sc = arg;

	FUNC0(sc->irq >= 0);

	FUNC1(lpc_bridge->pi_vmctx, sc->irq, sc->irq);
}
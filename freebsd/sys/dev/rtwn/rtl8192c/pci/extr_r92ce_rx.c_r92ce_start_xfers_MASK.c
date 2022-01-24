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
struct rtwn_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  R92C_HIMR ; 
 int /*<<< orphan*/  R92C_HISR ; 
 int R92C_INT_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct rtwn_softc*,int /*<<< orphan*/ ,int) ; 

void
FUNC1(struct rtwn_softc *sc)
{
	/* Clear pending interrupts. */
	FUNC0(sc, R92C_HISR, 0xffffffff);

	/* Enable interrupts. */
	FUNC0(sc, R92C_HIMR, R92C_INT_ENABLE);
}
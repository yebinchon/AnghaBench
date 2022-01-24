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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  R92C_BCN_CTRL_EN_BCN ; 
 int /*<<< orphan*/  FUNC1 (struct rtwn_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(struct rtwn_softc *sc, int id, int enable)
{

	if (enable) {
		FUNC1(sc, FUNC0(id),
		    0, R92C_BCN_CTRL_EN_BCN);
	} else {
		FUNC1(sc, FUNC0(id),
		    R92C_BCN_CTRL_EN_BCN, 0);
	}
}
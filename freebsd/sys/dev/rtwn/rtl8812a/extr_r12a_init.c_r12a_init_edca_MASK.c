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
 int /*<<< orphan*/  R92C_USTIME_EDCA ; 
 int /*<<< orphan*/  R92C_USTIME_TSF ; 
 int /*<<< orphan*/  FUNC0 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtwn_softc*,int /*<<< orphan*/ ,int) ; 

void
FUNC2(struct rtwn_softc *sc)
{
	FUNC0(sc);

	/* 80 MHz clock */
	FUNC1(sc, R92C_USTIME_TSF, 0x50);
	FUNC1(sc, R92C_USTIME_EDCA, 0x50);
}
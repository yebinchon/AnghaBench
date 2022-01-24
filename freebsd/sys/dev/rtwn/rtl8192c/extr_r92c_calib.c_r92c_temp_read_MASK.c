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
typedef  int /*<<< orphan*/  uint8_t ;
struct rtwn_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R92C_RF_T_METER ; 
 int /*<<< orphan*/  R92C_RF_T_METER_VAL ; 
 int /*<<< orphan*/  FUNC1 (struct rtwn_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

uint8_t
FUNC2(struct rtwn_softc *sc)
{
	return (FUNC0(FUNC1(sc, 0, R92C_RF_T_METER),
	    R92C_RF_T_METER_VAL));
}
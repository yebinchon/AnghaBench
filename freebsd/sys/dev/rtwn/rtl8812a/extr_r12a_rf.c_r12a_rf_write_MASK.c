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
typedef  int /*<<< orphan*/  uint32_t ;
struct rtwn_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  R88E_LSSI_PARAM_ADDR ; 
 int /*<<< orphan*/  R92C_LSSI_PARAM_DATA ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtwn_softc*,int /*<<< orphan*/ ,int) ; 

void
FUNC3(struct rtwn_softc *sc, int chain, uint8_t addr,
    uint32_t val)
{
	FUNC2(sc, FUNC0(chain),
	    FUNC1(R88E_LSSI_PARAM_ADDR, addr) |
	    FUNC1(R92C_LSSI_PARAM_DATA, val));
}
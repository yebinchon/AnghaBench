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
 int /*<<< orphan*/  R92C_AGGLEN_LMT ; 
 int /*<<< orphan*/  R92C_AGGR_BREAK_TIME ; 
 int /*<<< orphan*/  R92C_MAX_AGGR_NUM ; 
 int /*<<< orphan*/  FUNC0 (struct rtwn_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtwn_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtwn_softc*,int /*<<< orphan*/ ,int) ; 

void
FUNC3(struct rtwn_softc *sc)
{

	/* Setup AMPDU aggregation. */
	FUNC2(sc, R92C_AGGLEN_LMT, 0x99997631);	/* MCS7~0 */
	FUNC0(sc, R92C_AGGR_BREAK_TIME, 0x16);
	FUNC1(sc, R92C_MAX_AGGR_NUM, 0x0708);
}
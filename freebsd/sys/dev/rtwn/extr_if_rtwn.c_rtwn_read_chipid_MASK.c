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
struct rtwn_softc {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  R92C_SYS_CFG ; 
 int R92C_SYS_CFG_TRP_VAUX_EN ; 
 int FUNC0 (struct rtwn_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtwn_softc*,int) ; 

__attribute__((used)) static int
FUNC2(struct rtwn_softc *sc)
{
	uint32_t reg;

	reg = FUNC0(sc, R92C_SYS_CFG);
	if (reg & R92C_SYS_CFG_TRP_VAUX_EN)	/* test chip */
		return (EOPNOTSUPP);

	FUNC1(sc, reg);

	return (0);
}
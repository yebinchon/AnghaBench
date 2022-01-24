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
typedef  int /*<<< orphan*/  scr_stat ;
typedef  int /*<<< orphan*/  sc_softc_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_WAITOK ; 
 char* SC_DFLT_TERM ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static scr_stat
*FUNC6(sc_softc_t *sc, int vty)
{
    scr_stat *scp;

    /* assert(sc_malloc) */

    scp = (scr_stat *)FUNC1(sizeof(scr_stat), M_DEVBUF, M_WAITOK);
    FUNC0(sc, vty, scp);

    FUNC4(scp, TRUE, TRUE);
    if (FUNC5(scp, SC_DFLT_TERM))
	FUNC5(scp, "*");

#ifndef SC_NO_CUTPASTE
    FUNC2(scp, TRUE);
#endif

#ifndef SC_NO_HISTORY
    FUNC3(scp, 0, 0, TRUE);
#endif

    return scp;
}
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
struct iwm_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwm_softc*) ; 
 int /*<<< orphan*/  IWM_HBUS_TARG_PRPH_RADDR ; 
 int /*<<< orphan*/  IWM_HBUS_TARG_PRPH_RDAT ; 
 int FUNC1 (struct iwm_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iwm_softc*,int /*<<< orphan*/ ,int) ; 

uint32_t
FUNC3(struct iwm_softc *sc, uint32_t addr)
{
	FUNC2(sc,
	    IWM_HBUS_TARG_PRPH_RADDR, ((addr & 0x000fffff) | (3 << 24)));
	FUNC0(sc);
	return FUNC1(sc, IWM_HBUS_TARG_PRPH_RDAT);
}
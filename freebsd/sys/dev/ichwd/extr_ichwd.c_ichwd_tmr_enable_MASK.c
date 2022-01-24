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
typedef  int uint16_t ;
struct ichwd_softc {int active; int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  TCO1_CNT ; 
 int TCO_CNT_PRESERVE ; 
 int TCO_TMR_HALT ; 
 int FUNC0 (struct ichwd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ichwd_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static __inline void
FUNC3(struct ichwd_softc *sc)
{
	uint16_t cnt;

	cnt = FUNC0(sc, TCO1_CNT) & TCO_CNT_PRESERVE;
	FUNC2(sc, TCO1_CNT, cnt & ~TCO_TMR_HALT);
	sc->active = 1;
	FUNC1(sc->device, "timer enabled\n");
}
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
struct rum_softc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT2573_TSF_SYNC_MODE_DIS ; 
 int RT2573_TSF_TIMER_EN ; 
 int /*<<< orphan*/  RT2573_TXRX_CSR9 ; 
 int /*<<< orphan*/  FUNC1 (struct rum_softc*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC2(struct rum_softc *sc)
{
	FUNC1(sc, RT2573_TXRX_CSR9, RT2573_TSF_TIMER_EN |
	    FUNC0(RT2573_TSF_SYNC_MODE_DIS), 0x00ffffff);
}
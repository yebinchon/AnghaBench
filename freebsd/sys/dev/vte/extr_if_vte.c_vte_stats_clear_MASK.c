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
struct vte_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vte_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VTE_CNT_MECNT0 ; 
 int /*<<< orphan*/  VTE_CNT_MECNT1 ; 
 int /*<<< orphan*/  VTE_CNT_MECNT2 ; 
 int /*<<< orphan*/  VTE_CNT_MECNT3 ; 
 int /*<<< orphan*/  VTE_CNT_MECNT4 ; 
 int /*<<< orphan*/  VTE_CNT_PAUSE ; 
 int /*<<< orphan*/  VTE_CNT_RX_DONE ; 
 int /*<<< orphan*/  VTE_CNT_TX_DONE ; 

__attribute__((used)) static void
FUNC1(struct vte_softc *sc)
{

	/* Reading counter registers clears its contents. */
	FUNC0(sc, VTE_CNT_RX_DONE);
	FUNC0(sc, VTE_CNT_MECNT0);
	FUNC0(sc, VTE_CNT_MECNT1);
	FUNC0(sc, VTE_CNT_MECNT2);
	FUNC0(sc, VTE_CNT_MECNT3);
	FUNC0(sc, VTE_CNT_TX_DONE);
	FUNC0(sc, VTE_CNT_MECNT4);
	FUNC0(sc, VTE_CNT_PAUSE);
}
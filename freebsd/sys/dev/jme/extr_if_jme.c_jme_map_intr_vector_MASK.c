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
typedef  int /*<<< orphan*/  uint32_t ;
struct jme_softc {int dummy; } ;
typedef  int /*<<< orphan*/  map ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct jme_softc*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ JME_MSINUM_BASE ; 
 int JME_MSI_MESSAGES ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int MSINUM_NUM_INTR_SOURCE ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  N_INTR_RXQ0_COAL ; 
 int /*<<< orphan*/  N_INTR_RXQ0_COAL_TO ; 
 int /*<<< orphan*/  N_INTR_RXQ0_COMP ; 
 int /*<<< orphan*/  N_INTR_RXQ0_DESC_EMPTY ; 
 int /*<<< orphan*/  N_INTR_RXQ1_COAL ; 
 int /*<<< orphan*/  N_INTR_RXQ1_COAL_TO ; 
 int /*<<< orphan*/  N_INTR_RXQ1_COMP ; 
 int /*<<< orphan*/  N_INTR_RXQ1_DESC_EMPTY ; 
 int /*<<< orphan*/  N_INTR_RXQ2_COAL ; 
 int /*<<< orphan*/  N_INTR_RXQ2_COAL_TO ; 
 int /*<<< orphan*/  N_INTR_RXQ2_COMP ; 
 int /*<<< orphan*/  N_INTR_RXQ2_DESC_EMPTY ; 
 int /*<<< orphan*/  N_INTR_RXQ3_COAL ; 
 int /*<<< orphan*/  N_INTR_RXQ3_COAL_TO ; 
 int /*<<< orphan*/  N_INTR_RXQ3_COMP ; 
 int /*<<< orphan*/  N_INTR_RXQ3_DESC_EMPTY ; 
 int /*<<< orphan*/  N_INTR_TXQ0_COMP ; 
 int /*<<< orphan*/  N_INTR_TXQ1_COMP ; 
 int /*<<< orphan*/  N_INTR_TXQ2_COMP ; 
 int /*<<< orphan*/  N_INTR_TXQ3_COMP ; 
 int /*<<< orphan*/  N_INTR_TXQ4_COMP ; 
 int /*<<< orphan*/  N_INTR_TXQ5_COMP ; 
 int /*<<< orphan*/  N_INTR_TXQ6_COMP ; 
 int /*<<< orphan*/  N_INTR_TXQ7_COMP ; 
 int /*<<< orphan*/  N_INTR_TXQ_COAL ; 
 int /*<<< orphan*/  N_INTR_TXQ_COAL_TO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC4(struct jme_softc *sc)
{
	uint32_t map[MSINUM_NUM_INTR_SOURCE / JME_MSI_MESSAGES];

	FUNC3(map, sizeof(map));

	/* Map Tx interrupts source to MSI/MSIX vector 2. */
	map[FUNC2(N_INTR_TXQ0_COMP)] =
	    FUNC1(2, N_INTR_TXQ0_COMP);
	map[FUNC2(N_INTR_TXQ1_COMP)] |=
	    FUNC1(2, N_INTR_TXQ1_COMP);
	map[FUNC2(N_INTR_TXQ2_COMP)] |=
	    FUNC1(2, N_INTR_TXQ2_COMP);
	map[FUNC2(N_INTR_TXQ3_COMP)] |=
	    FUNC1(2, N_INTR_TXQ3_COMP);
	map[FUNC2(N_INTR_TXQ4_COMP)] |=
	    FUNC1(2, N_INTR_TXQ4_COMP);
	map[FUNC2(N_INTR_TXQ5_COMP)] |=
	    FUNC1(2, N_INTR_TXQ5_COMP);
	map[FUNC2(N_INTR_TXQ6_COMP)] |=
	    FUNC1(2, N_INTR_TXQ6_COMP);
	map[FUNC2(N_INTR_TXQ7_COMP)] |=
	    FUNC1(2, N_INTR_TXQ7_COMP);
	map[FUNC2(N_INTR_TXQ_COAL)] |=
	    FUNC1(2, N_INTR_TXQ_COAL);
	map[FUNC2(N_INTR_TXQ_COAL_TO)] |=
	    FUNC1(2, N_INTR_TXQ_COAL_TO);

	/* Map Rx interrupts source to MSI/MSIX vector 1. */
	map[FUNC2(N_INTR_RXQ0_COMP)] =
	    FUNC1(1, N_INTR_RXQ0_COMP);
	map[FUNC2(N_INTR_RXQ1_COMP)] =
	    FUNC1(1, N_INTR_RXQ1_COMP);
	map[FUNC2(N_INTR_RXQ2_COMP)] =
	    FUNC1(1, N_INTR_RXQ2_COMP);
	map[FUNC2(N_INTR_RXQ3_COMP)] =
	    FUNC1(1, N_INTR_RXQ3_COMP);
	map[FUNC2(N_INTR_RXQ0_DESC_EMPTY)] =
	    FUNC1(1, N_INTR_RXQ0_DESC_EMPTY);
	map[FUNC2(N_INTR_RXQ1_DESC_EMPTY)] =
	    FUNC1(1, N_INTR_RXQ1_DESC_EMPTY);
	map[FUNC2(N_INTR_RXQ2_DESC_EMPTY)] =
	    FUNC1(1, N_INTR_RXQ2_DESC_EMPTY);
	map[FUNC2(N_INTR_RXQ3_DESC_EMPTY)] =
	    FUNC1(1, N_INTR_RXQ3_DESC_EMPTY);
	map[FUNC2(N_INTR_RXQ0_COAL)] =
	    FUNC1(1, N_INTR_RXQ0_COAL);
	map[FUNC2(N_INTR_RXQ1_COAL)] =
	    FUNC1(1, N_INTR_RXQ1_COAL);
	map[FUNC2(N_INTR_RXQ2_COAL)] =
	    FUNC1(1, N_INTR_RXQ2_COAL);
	map[FUNC2(N_INTR_RXQ3_COAL)] =
	    FUNC1(1, N_INTR_RXQ3_COAL);
	map[FUNC2(N_INTR_RXQ0_COAL_TO)] =
	    FUNC1(1, N_INTR_RXQ0_COAL_TO);
	map[FUNC2(N_INTR_RXQ1_COAL_TO)] =
	    FUNC1(1, N_INTR_RXQ1_COAL_TO);
	map[FUNC2(N_INTR_RXQ2_COAL_TO)] =
	    FUNC1(1, N_INTR_RXQ2_COAL_TO);
	map[FUNC2(N_INTR_RXQ3_COAL_TO)] =
	    FUNC1(1, N_INTR_RXQ3_COAL_TO);

	/* Map all other interrupts source to MSI/MSIX vector 0. */
	FUNC0(sc, JME_MSINUM_BASE + sizeof(uint32_t) * 0, map[0]);
	FUNC0(sc, JME_MSINUM_BASE + sizeof(uint32_t) * 1, map[1]);
	FUNC0(sc, JME_MSINUM_BASE + sizeof(uint32_t) * 2, map[2]);
	FUNC0(sc, JME_MSINUM_BASE + sizeof(uint32_t) * 3, map[3]);
}
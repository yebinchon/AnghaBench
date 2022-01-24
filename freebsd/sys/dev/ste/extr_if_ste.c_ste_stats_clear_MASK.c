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
struct ste_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ste_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ste_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ste_softc*) ; 
 int /*<<< orphan*/  STE_STAT_CARRIER_ERR ; 
 int /*<<< orphan*/  STE_STAT_LATE_COLLS ; 
 int /*<<< orphan*/  STE_STAT_MULTI_COLLS ; 
 int /*<<< orphan*/  STE_STAT_RX_BCAST ; 
 int /*<<< orphan*/  STE_STAT_RX_FRAMES ; 
 int /*<<< orphan*/  STE_STAT_RX_LOST ; 
 int /*<<< orphan*/  STE_STAT_RX_MCAST ; 
 int /*<<< orphan*/  STE_STAT_RX_OCTETS_HI ; 
 int /*<<< orphan*/  STE_STAT_RX_OCTETS_LO ; 
 int /*<<< orphan*/  STE_STAT_SINGLE_COLLS ; 
 int /*<<< orphan*/  STE_STAT_TX_ABORT ; 
 int /*<<< orphan*/  STE_STAT_TX_BCAST ; 
 int /*<<< orphan*/  STE_STAT_TX_DEFER ; 
 int /*<<< orphan*/  STE_STAT_TX_EXDEFER ; 
 int /*<<< orphan*/  STE_STAT_TX_FRAMES ; 
 int /*<<< orphan*/  STE_STAT_TX_MCAST ; 
 int /*<<< orphan*/  STE_STAT_TX_OCTETS_HI ; 
 int /*<<< orphan*/  STE_STAT_TX_OCTETS_LO ; 

__attribute__((used)) static void
FUNC3(struct ste_softc *sc)
{

	FUNC2(sc);

	/* Rx stats. */
	FUNC1(sc, STE_STAT_RX_OCTETS_LO);
	FUNC1(sc, STE_STAT_RX_OCTETS_HI);
	FUNC1(sc, STE_STAT_RX_FRAMES);
	FUNC0(sc, STE_STAT_RX_BCAST);
	FUNC0(sc, STE_STAT_RX_MCAST);
	FUNC0(sc, STE_STAT_RX_LOST);
	/* Tx stats. */
	FUNC1(sc, STE_STAT_TX_OCTETS_LO);
	FUNC1(sc, STE_STAT_TX_OCTETS_HI);
	FUNC1(sc, STE_STAT_TX_FRAMES);
	FUNC0(sc, STE_STAT_TX_BCAST);
	FUNC0(sc, STE_STAT_TX_MCAST);
	FUNC0(sc, STE_STAT_CARRIER_ERR);
	FUNC0(sc, STE_STAT_SINGLE_COLLS);
	FUNC0(sc, STE_STAT_MULTI_COLLS);
	FUNC0(sc, STE_STAT_LATE_COLLS);
	FUNC0(sc, STE_STAT_TX_DEFER);
	FUNC0(sc, STE_STAT_TX_EXDEFER);
	FUNC0(sc, STE_STAT_TX_ABORT);
}
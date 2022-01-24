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
struct ural_softc {int dummy; } ;
struct ieee80211com {struct ural_softc* ic_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ural_softc*) ; 
 int /*<<< orphan*/  RAL_TXRX_CSR19 ; 
 int /*<<< orphan*/  FUNC1 (struct ural_softc*) ; 
 int /*<<< orphan*/  ieee80211broadcastaddr ; 
 int /*<<< orphan*/  FUNC2 (struct ural_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ural_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct ieee80211com *ic)
{
	struct ural_softc *sc = ic->ic_softc;

	FUNC0(sc);
	FUNC3(sc, RAL_TXRX_CSR19, 0);
	FUNC2(sc, ieee80211broadcastaddr);
	FUNC1(sc);
}
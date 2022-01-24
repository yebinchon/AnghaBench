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
struct run_softc {int dummy; } ;
struct ieee80211com {struct run_softc* ic_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct run_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct run_softc*) ; 
 int /*<<< orphan*/  ieee80211broadcastaddr ; 
 int /*<<< orphan*/  FUNC2 (struct run_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct run_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct ieee80211com *ic)
{
	struct run_softc *sc = ic->ic_softc;

	FUNC0(sc);

	/* abort TSF synchronization */
	FUNC2(sc);
	FUNC3(sc, ieee80211broadcastaddr);

	FUNC1(sc);

	return;
}
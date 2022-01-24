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
struct otus_softc {int dummy; } ;
struct ieee80211com {struct otus_softc* ic_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct otus_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct otus_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct otus_softc*) ; 

__attribute__((used)) static int
FUNC3(struct ieee80211com *ic)
{
	struct otus_softc *sc = ic->ic_softc;

	FUNC0(sc);
	/*
	 * XXX TODO: take temporary copy of EDCA information
	 * when scheduling this so we have a more time-correct view
	 * of things.
	 * XXX TODO: this can be done on the net80211 level
	 */
	FUNC2(sc);
	FUNC1(sc);
	return (0);
}
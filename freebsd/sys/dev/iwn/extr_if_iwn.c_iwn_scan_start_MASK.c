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
struct iwn_softc {int dummy; } ;
struct ieee80211com {struct iwn_softc* ic_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  IWN_LED_LINK ; 
 int /*<<< orphan*/  FUNC0 (struct iwn_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwn_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwn_softc*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC3(struct ieee80211com *ic)
{
	struct iwn_softc *sc = ic->ic_softc;

	FUNC0(sc);
	/* make the link LED blink while we're scanning */
	FUNC2(sc, IWN_LED_LINK, 20, 2);
	FUNC1(sc);
}
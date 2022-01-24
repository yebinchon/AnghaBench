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
struct ieee80211com {int dummy; } ;
struct wpi_softc {struct ieee80211com sc_ic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211com*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211com*) ; 

__attribute__((used)) static void
FUNC2(void *arg)
{
	struct wpi_softc *sc = arg;
	struct ieee80211com *ic = &sc->sc_ic;

	FUNC0(ic, "scan timeout\n");
	FUNC1(ic);
}
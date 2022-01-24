#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wpi_softc {int /*<<< orphan*/  (* sc_node_free ) (struct ieee80211_node*) ;} ;
struct wpi_node {scalar_t__ id; } ;
struct ieee80211_node {TYPE_1__* ni_ic; } ;
struct TYPE_2__ {struct wpi_softc* ic_softc; } ;

/* Variables and functions */
 scalar_t__ WPI_ID_UNDEFINED ; 
 struct wpi_node* FUNC0 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpi_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpi_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_node*) ; 
 scalar_t__ FUNC4 (struct wpi_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct wpi_softc*,struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpi_softc*,scalar_t__) ; 

__attribute__((used)) static void
FUNC7(struct ieee80211_node *ni)
{
	struct wpi_softc *sc = ni->ni_ic->ic_softc;
	struct wpi_node *wn = FUNC0(ni);

	if (wn->id != WPI_ID_UNDEFINED) {
		FUNC1(sc);
		if (FUNC4(sc, wn->id)) {
			FUNC6(sc, wn->id);
			FUNC5(sc, ni);
		}
		FUNC2(sc);
	}

	sc->sc_node_free(ni);
}
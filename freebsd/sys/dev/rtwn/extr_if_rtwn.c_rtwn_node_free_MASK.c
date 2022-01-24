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
struct rtwn_softc {int /*<<< orphan*/  (* sc_node_free ) (struct ieee80211_node*) ;int /*<<< orphan*/ ** node_list; } ;
struct rtwn_node {size_t id; } ;
struct ieee80211_node {TYPE_1__* ni_ic; } ;
struct TYPE_2__ {struct rtwn_softc* ic_softc; } ;

/* Variables and functions */
 size_t RTWN_MACID_UNDEFINED ; 
 struct rtwn_node* FUNC0 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtwn_softc*,size_t*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rtwn_set_media_status ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_node*) ; 

__attribute__((used)) static void
FUNC5(struct ieee80211_node *ni)
{
	struct rtwn_softc *sc = ni->ni_ic->ic_softc;
	struct rtwn_node *un = FUNC0(ni);

	FUNC1(sc);
	if (un->id != RTWN_MACID_UNDEFINED) {
		sc->node_list[un->id] = NULL;
		FUNC3(sc, &un->id, sizeof(un->id),
		    rtwn_set_media_status);
	}
	FUNC2(sc);

	sc->sc_node_free(ni);
}
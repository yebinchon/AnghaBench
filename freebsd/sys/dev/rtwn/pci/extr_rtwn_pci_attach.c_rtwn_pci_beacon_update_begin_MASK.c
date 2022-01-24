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
struct rtwn_vap {int /*<<< orphan*/  id; } ;
struct rtwn_softc {int dummy; } ;
struct ieee80211vap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtwn_softc*) ; 
 struct rtwn_vap* FUNC1 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtwn_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct rtwn_softc *sc, struct ieee80211vap *vap)
{
	struct rtwn_vap *rvp = FUNC1(vap);

	FUNC0(sc);

	FUNC2(sc, rvp->id, 0);
}
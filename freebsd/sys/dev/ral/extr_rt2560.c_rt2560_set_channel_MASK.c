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
struct rt2560_softc {int dummy; } ;
struct ieee80211com {int /*<<< orphan*/  ic_curchan; struct rt2560_softc* ic_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rt2560_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2560_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2560_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct ieee80211com *ic)
{
	struct rt2560_softc *sc = ic->ic_softc;

	FUNC0(sc);
	FUNC2(sc, ic->ic_curchan);
	FUNC1(sc);

}
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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct rt2661_softc {int dummy; } ;
struct ieee80211com {struct rt2661_softc* ic_softc; } ;

/* Variables and functions */
 int FUNC0 (struct ieee80211com*) ; 
 int FUNC1 (struct rt2661_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2661_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RT2661_MAC_CSR9 ; 

__attribute__((used)) static void
FUNC3(struct ieee80211com *ic)
{
	struct rt2661_softc *sc = ic->ic_softc;
	uint8_t slottime;
	uint32_t tmp;

	slottime = FUNC0(ic);

	tmp = FUNC1(sc, RT2661_MAC_CSR9);
	tmp = (tmp & ~0xff) | slottime;
	FUNC2(sc, RT2661_MAC_CSR9, tmp);
}
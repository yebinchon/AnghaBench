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
struct iwi_softc {scalar_t__ fw_state; } ;
struct ieee80211com {TYPE_1__* ic_curchan; struct iwi_softc* ic_softc; } ;
struct TYPE_2__ {int /*<<< orphan*/  ic_ieee; } ;

/* Variables and functions */
 scalar_t__ IWI_FW_IDLE ; 
 int /*<<< orphan*/  FUNC0 (struct iwi_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct ieee80211com *ic)
{
	struct iwi_softc *sc = ic->ic_softc;

	if (sc->fw_state == IWI_FW_IDLE)
		FUNC0(sc, ic->ic_curchan->ic_ieee);
}
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
typedef  int /*<<< orphan*/  uint8_t ;
struct iwi_softc {int /*<<< orphan*/  sc_dev; } ;
struct ieee80211com {struct iwi_softc* ic_softc; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_MODE_11A ; 
 int /*<<< orphan*/  IEEE80211_MODE_11B ; 
 int /*<<< orphan*/  IEEE80211_MODE_11G ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct ieee80211com *ic, uint8_t bands[], size_t bands_sz)
{
	struct iwi_softc *sc = ic->ic_softc;
	device_t dev = sc->sc_dev;

	FUNC0(bands, 0, bands_sz);
	FUNC2(bands, IEEE80211_MODE_11B);
	FUNC2(bands, IEEE80211_MODE_11G);
	if (FUNC1(dev) >= 0x4223)
		FUNC2(bands, IEEE80211_MODE_11A);
}
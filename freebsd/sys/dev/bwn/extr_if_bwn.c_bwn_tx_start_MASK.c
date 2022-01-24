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
struct TYPE_2__ {scalar_t__ len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ieee80211_node {int dummy; } ;
struct bwn_softc {struct bwn_mac* sc_curmac; } ;
struct bwn_mac {int mac_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bwn_softc*) ; 
 int BWN_MAC_FLAG_DMA ; 
 int ENXIO ; 
 scalar_t__ IEEE80211_MIN_LEN ; 
 int FUNC1 (struct bwn_mac*,struct ieee80211_node*,struct mbuf**) ; 
 int FUNC2 (struct bwn_mac*,struct ieee80211_node*,struct mbuf**) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*) ; 

__attribute__((used)) static int
FUNC4(struct bwn_softc *sc, struct ieee80211_node *ni, struct mbuf *m)
{
	struct bwn_mac *mac = sc->sc_curmac;
	int error;

	FUNC0(sc);

	if (m->m_pkthdr.len < IEEE80211_MIN_LEN || mac == NULL) {
		FUNC3(m);
		return (ENXIO);
	}

	error = (mac->mac_flags & BWN_MAC_FLAG_DMA) ?
	    FUNC1(mac, ni, &m) : FUNC2(mac, ni, &m);
	if (error) {
		FUNC3(m);
		return (error);
	}
	return (0);
}
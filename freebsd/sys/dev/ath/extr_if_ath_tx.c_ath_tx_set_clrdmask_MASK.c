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
struct ath_softc {int dummy; } ;
struct ath_node {int clrdmask; TYPE_1__* an_tid; } ;
struct TYPE_2__ {int isfiltered; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath_softc*) ; 
 int IEEE80211_TID_SIZE ; 

__attribute__((used)) static void
FUNC1(struct ath_softc *sc, struct ath_node *an)
{
	int i;

	FUNC0(sc);

	for (i = 0; i < IEEE80211_TID_SIZE; i++) {
		if (an->an_tid[i].isfiltered == 1)
			return;
	}
	an->clrdmask = 1;
}
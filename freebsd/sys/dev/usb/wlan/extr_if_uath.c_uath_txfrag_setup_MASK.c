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
typedef  int /*<<< orphan*/  uath_datahead ;
struct uath_softc {int dummy; } ;
struct uath_data {int dummy; } ;
struct mbuf {struct mbuf* m_nextpkt; } ;
struct ieee80211_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct uath_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uath_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  next ; 
 struct uath_data* FUNC4 (struct uath_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct uath_softc*,int /*<<< orphan*/ *,struct ieee80211_node*) ; 

__attribute__((used)) static int
FUNC6(struct uath_softc *sc, uath_datahead *frags,
    struct mbuf *m0, struct ieee80211_node *ni)
{
	struct mbuf *m;
	struct uath_data *bf;

	FUNC2(sc);
	for (m = m0->m_nextpkt; m != NULL; m = m->m_nextpkt) {
		bf = FUNC4(sc);
		if (bf == NULL) {       /* out of buffers, cleanup */
			FUNC5(sc, frags, ni);
			break;
		}
		FUNC3(ni);
		FUNC1(frags, bf, next);
	}

	return !FUNC0(frags);
}
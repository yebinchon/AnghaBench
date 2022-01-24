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
struct rtwn_softc {int dummy; } ;
struct rtwn_rx_stat_common {int dummy; } ;
struct mbuf {int dummy; } ;
struct ieee80211_node {int dummy; } ;
typedef  int /*<<< orphan*/  stat ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mbuf*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct ieee80211_node* FUNC2 (struct rtwn_softc*,struct mbuf*,struct rtwn_rx_stat_common*) ; 

__attribute__((used)) static struct ieee80211_node *
FUNC3(struct rtwn_softc *sc, struct mbuf *m)
{
	struct rtwn_rx_stat_common stat;

	/* Imitate PCIe layout. */
	FUNC1(m, 0, sizeof(stat), (caddr_t)&stat);
	FUNC0(m, sizeof(stat));

	return (FUNC2(sc, m, &stat));
}
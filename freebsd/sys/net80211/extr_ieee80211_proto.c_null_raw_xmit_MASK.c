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
struct mbuf {int dummy; } ;
struct ieee80211_node {int /*<<< orphan*/  ni_ic; } ;
struct ieee80211_bpf_params {int dummy; } ;

/* Variables and functions */
 int ENETDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*) ; 

__attribute__((used)) static int
FUNC2(struct ieee80211_node *ni, struct mbuf *m,
	const struct ieee80211_bpf_params *params)
{

	FUNC0(ni->ni_ic, "missing ic_raw_xmit callback, drop frame\n");
	FUNC1(m);
	return ENETDOWN;
}
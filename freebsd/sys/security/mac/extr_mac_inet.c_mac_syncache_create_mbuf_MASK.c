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
struct label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct label*,struct mbuf*,struct label*) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*) ; 
 struct label* FUNC2 (struct mbuf*) ; 
 scalar_t__ mac_policy_count ; 
 int /*<<< orphan*/  syncache_create_mbuf ; 

void
FUNC3(struct label *sc_label, struct mbuf *m)
{
	struct label *mlabel;

	FUNC1(m);

	if (mac_policy_count == 0)
		return;

	mlabel = FUNC2(m);

	FUNC0(syncache_create_mbuf, sc_label, m,
	    mlabel);
}
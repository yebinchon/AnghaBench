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
struct ieee80211_node {int /*<<< orphan*/  ni_refcnt; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

int
FUNC2(struct ieee80211_node *ni)
{
	/* XXX need equivalent of atomic_dec_and_test */
	FUNC1(&ni->ni_refcnt, 1);
	return FUNC0(&ni->ni_refcnt, 0, 1);
}
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
struct ieee80211_node {int /*<<< orphan*/  ni_psq; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 

int
FUNC1(struct ieee80211_node *ni)
{
	return FUNC0(&ni->ni_psq);
}
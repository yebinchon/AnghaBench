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
struct sbuf {int dummy; } ;
struct ieee80211_node {int /*<<< orphan*/  ni_macaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_node*,struct sbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*,char*,...) ; 

__attribute__((used)) static void
FUNC2(void *arg, struct ieee80211_node *ni)
{

	struct sbuf *sb = (struct sbuf *) arg;
	FUNC1(sb, "MAC: %6D\n", ni->ni_macaddr, ":");
	FUNC0(ni, sb);
	FUNC1(sb, "\n");
}
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
struct sta_table {int dummy; } ;
struct ieee80211_scan_state {scalar_t__ ss_last; struct sta_table* ss_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sta_table*) ; 
 int /*<<< orphan*/  FUNC1 (struct sta_table*) ; 
 int /*<<< orphan*/  FUNC2 (struct sta_table*) ; 

__attribute__((used)) static int
FUNC3(struct ieee80211_scan_state *ss)
{
	struct sta_table *st = ss->ss_priv;

	FUNC0(st);
	FUNC2(st);
	FUNC1(st);
	ss->ss_last = 0;
	return 0;
}
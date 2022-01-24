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
struct scanreq {int /*<<< orphan*/  space; } ;
struct ieee80211_scan_entry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ieee80211_scan_entry const*,int*) ; 

__attribute__((used)) static void
FUNC1(void *arg, const struct ieee80211_scan_entry *se)
{
	struct scanreq *req = arg;
	int ielen;

	req->space += FUNC0(se, &ielen);
}